$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
$siteRoot = Join-Path $projectRoot "site"

if (-not (Test-Path -LiteralPath $siteRoot)) {
  Write-Error "Missing site folder: $siteRoot"
}

$requiredFiles = @(
  "index.html",
  "leopards.html",
  "booking.html",
  "legal.html",
  "contact.html",
  "masterclass.html",
  "gallery.html",
  "group-expeditions.html",
  "thank-you.html",
  "site-actions.js",
  "_headers",
  "_redirects"
)

$archivedPublicFiles = @(
  "booking-mobile.html",
  "certificate.html",
  "consent.html",
  "dashboard.html",
  "driver.html",
  "feedback.html",
  "field-companion.html",
  "field-report.html",
  "forecast.html",
  "log.html",
  "media-library.html",
  "mobile.html",
  "permit.html",
  "policies.html",
  "sightings.html",
  "species-id.html",
  "sustainability.html",
  "sustainability-report.html",
  "training.html",
  "verification.html"
)

$issues = New-Object System.Collections.Generic.List[string]

foreach ($fileName in $requiredFiles) {
  $filePath = Join-Path $siteRoot $fileName
  if (-not (Test-Path -LiteralPath $filePath)) {
    $issues.Add("Missing required file: $fileName")
  }
}

foreach ($fileName in $archivedPublicFiles) {
  $filePath = Join-Path $siteRoot $fileName
  if (Test-Path -LiteralPath $filePath) {
    $issues.Add("Archived page still present in public site: $fileName")
  }
}

$htmlFiles = Get-ChildItem -LiteralPath $siteRoot -Filter "*.html" -File
$placeholderPattern = "yournumber|yourwhatsapp|\+123456789|tel:\+123456789"
$forbiddenPublicCopyPattern = "Book Now|Check Availability|Reserve Seat|Secure Checkout|Confirm Booking|Pay Now|instant booking|instant confirmation|live slot|live availability|real-time availability|online payment|permit confirmation|customer dashboard|customer login|dashboard access|AI Species|species ID|certificate generation|live sightings|Live Sightings|verified field data|automated booking system|driver portal|admin dashboard|naturalist dashboard"
$expectedWhatsAppUrl = "https://wa.me/918387817123"
$expectedPhoneUrl = "tel:+918387817123"
$manualBookingDisclaimer = "Safari bookings are manually coordinated after enquiry. Final availability, permit requirements, vehicle allocation, pickup details, and payment process are confirmed over phone or WhatsApp."
$sightingDisclaimer = "Safari sightings are natural and cannot be guaranteed. Booking assistance is subject to availability, permit rules, vehicle allocation, and final confirmation over phone or WhatsApp."
$encodingArtifactSequences = @(
  (([string][char]0x00E2) + ([string][char]0x201A) + ([string][char]0x00B9)),
  (([string][char]0x00C2) + ([string][char]0x00A9)),
  (([string][char]0x00E2) + ([string][char]0x20AC) + ([string][char]0x00A2)),
  (([string][char]0x00C2) + ([string][char]0x00B0)),
  (([string][char]0x00E2) + ([string][char]0x20AC) + ([string][char]0x201D)),
  (([string][char]0x00E2) + ([string][char]0x20AC) + ([string][char]0x201C)),
  "``n"
)

foreach ($file in $htmlFiles) {
  $content = Get-Content -Raw -LiteralPath $file.FullName

  if ($content -match $placeholderPattern) {
    $issues.Add("Placeholder contact value remains in $($file.Name)")
  }

  $hasEncodingArtifact = $false
  foreach ($artifactSequence in $encodingArtifactSequences) {
    if ($content.Contains($artifactSequence)) {
      $hasEncodingArtifact = $true
    }
  }

  if ($hasEncodingArtifact) {
    $issues.Add("Encoding or replacement artifact remains in $($file.Name)")
  }

  if ($content -match 'href="#"') {
    $issues.Add("Placeholder href remains in $($file.Name)")
  }

  if ($content -match $forbiddenPublicCopyPattern) {
    $issues.Add("Misleading booking-platform copy remains in $($file.Name)")
  }

  if ($content -match 'googleusercontent\.com') {
    $issues.Add("External Google-hosted image remains in $($file.Name)")
  }

  foreach ($match in [regex]::Matches($content, 'href="(https://wa\.me/[^"]+)"')) {
    if ($match.Groups[1].Value -ne $expectedWhatsAppUrl) {
      $issues.Add("Unexpected WhatsApp URL in $($file.Name): $($match.Groups[1].Value)")
    }
  }

  foreach ($match in [regex]::Matches($content, 'href="(tel:[^"]+)"')) {
    if ($match.Groups[1].Value -ne $expectedPhoneUrl) {
      $issues.Add("Unexpected phone URL in $($file.Name): $($match.Groups[1].Value)")
    }
  }

  if ($content -match 'href=\\"') {
    $issues.Add("Escaped href attribute remains in $($file.Name)")
  }

  foreach ($match in [regex]::Matches($content, 'href="([^"]+\.html(?:[#?][^"]*)?)"')) {
    $href = $match.Groups[1].Value
    $targetFile = ($href -split "[#?]")[0]
    $targetPath = Join-Path $siteRoot $targetFile
    if (-not (Test-Path -LiteralPath $targetPath)) {
      $issues.Add("Broken internal link in $($file.Name): $href")
    }
  }

  foreach ($match in [regex]::Matches($content, 'action="/([^"]+\.html)"')) {
    $targetFile = $match.Groups[1].Value
    $targetPath = Join-Path $siteRoot $targetFile
    if (-not (Test-Path -LiteralPath $targetPath)) {
      $issues.Add("Broken form action in $($file.Name): /$targetFile")
    }
  }

  foreach ($match in [regex]::Matches($content, '(?:src="|url\(''|url\()(?<path>assets/[^"'')]+)')) {
    $assetPath = Join-Path $siteRoot $match.Groups["path"].Value
    if (-not (Test-Path -LiteralPath $assetPath)) {
      $issues.Add("Missing local asset in $($file.Name): $($match.Groups["path"].Value)")
    }
  }
}

$formPages = @("booking.html", "contact.html", "group-expeditions.html", "masterclass.html")
foreach ($formPage in $formPages) {
  $content = Get-Content -Raw -LiteralPath (Join-Path $siteRoot $formPage)
  if ($content -notmatch 'data-netlify="true"') {
    $issues.Add("Netlify form configuration missing in $formPage")
  }

  if (-not $content.Contains($manualBookingDisclaimer)) {
    $issues.Add("Manual booking disclaimer missing in $formPage")
  }

  if (-not $content.Contains($sightingDisclaimer)) {
    $issues.Add("Sighting disclaimer missing in $formPage")
  }
}

$actionsPath = Join-Path $siteRoot "site-actions.js"
$actionsContent = Get-Content -Raw -LiteralPath $actionsPath
if ($actionsContent -match 'https://wa\.me/' -and -not $actionsContent.Contains($expectedWhatsAppUrl)) {
  $issues.Add("Unexpected WhatsApp URL in site-actions.js")
}
if ($actionsContent -match 'tel:' -and -not $actionsContent.Contains($expectedPhoneUrl)) {
  $issues.Add("Unexpected phone URL in site-actions.js")
}

foreach ($file in $htmlFiles) {
  $content = Get-Content -Raw -LiteralPath $file.FullName
  if ($content -notmatch 'site-actions\.js') {
    $issues.Add("Shared button action script missing in $($file.Name)")
  }
}

if ($issues.Count -gt 0) {
  Write-Host "Static site validation failed:" -ForegroundColor Red
  foreach ($issue in $issues) {
    Write-Host "- $issue"
  }
  exit 1
}

Write-Host "Static site validation passed." -ForegroundColor Green
Write-Host "Checked $($htmlFiles.Count) HTML files in $siteRoot"
