# Jhalana Wilds Site Inventory

## Deployable Site Pages

These files live in `site/` and are ready for static hosting.

### Public Guest Site

- `index.html` - homepage
- `leopards.html` - leopard guide
- `booking.html` - booking/packages
- `booking-mobile.html` - mobile booking flow variant
- `log.html` - sightings log / zone tracker
- `sightings.html` - compatibility alias for `log.html`
- `legal.html` - policies and ethical safari page
- `policies.html` - compatibility alias for `legal.html`
- `contact.html` - contact and group expedition inquiry
- `group-expeditions.html` - mobile group expedition inquiry flow
- `masterclass.html` - photography masterclass
- `mobile.html` - mobile landing page
- `forecast.html` - 2026 season forecast
- `sustainability.html` - sustainability dashboard
- `sustainability-report.html` - annual sustainability report
- `thank-you.html` - form success page

### Guest / Field Utility

- `permit.html` - digital safari permit
- `field-companion.html` - guest field companion
- `species-id.html` - AI species ID prototype
- `certificate.html` - citizen scientist certificate
- `consent.html` - policies and consent mobile utility
- `gallery.html` - members-only workshop gallery

### Operations / Admin

- `dashboard.html` - admin overview
- `driver.html` - dark mode driver portal
- `field-report.html` - field report portal variant
- `verification.html` - naturalist verification queue
- `training.html` - naturalist training portal
- `media-library.html` - media library management
- `feedback.html` - guest feedback analytics

## Source Exports Not Promoted As Separate Production Pages

These remain in their original Stitch export folders because they are duplicates, earlier variants, or asset prompts.

- `ai_species_id_dark_mode_optimized` - alternate species ID variant; `species-id.html` uses the mobile interface.
- `contact_group_expeditions_jhalana_wilds` - unlinked duplicate; `contact.html` uses the linked version.
- `ethical_safari_badge` - text-only badge prompt, not a page.
- `expeditions_booking_premium_packages` - earlier booking variant; `booking.html` uses the linked version.
- `field_companion_app_in_safari_interface` - alternate field companion variant; `field-companion.html` uses dark optimized version.
- `jhalana_wilds_high_converting_safari_landing_page` - earlier homepage variant; `index.html` uses the linked homepage.
- `jhalana_wilds_homepage_with_live_tracker` - duplicate homepage variant.
- `jhalana_wilds_homepage_with_live_tracker_highlights` - duplicate homepage variant.
- `jhalana_wilds_mobile_landing_page` - alternate mobile landing; `mobile.html` uses the linked version.
- `legal_policies_compliance_jhalana_wilds` - unlinked duplicate; `legal.html` uses the linked version.
- `meet_the_leopards_citizen_scientist_guide_1` - earlier leopard guide variant.
- `meet_the_leopards_citizen_scientist_guide_2` - earlier leopard guide variant.
- `meet_the_leopards_mobile_guide` - mobile leopard guide variant, not currently needed as a separate route.
- `navigation_export_guide_jhalana_wilds` - internal export guide, not public site content.
- `secure_payment_badge` - text-only badge prompt, not a page.
- `sightings_log_historical_field_data` - earlier sightings variant; `log.html` uses the linked version.

## Validation

Run this before deployment:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\validate-static-site.ps1
```

Current validation checks:

- Required production files exist.
- Internal `.html` links resolve.
- No `href="#"` placeholder links remain.
- No root-relative form actions remain for local preview.
- Netlify forms are configured on booking, contact, and masterclass pages.
- Placeholder contact values and known Stitch encoding artifacts are absent.
