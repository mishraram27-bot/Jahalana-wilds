# Netlify Deployment Checklist

## Deploy Folder

Deploy this folder:

- `site/`

Do not deploy:

- `archive/prototype-pages/`
- `archive/internal-pages/`
- Original Stitch source folders

## Public Pages To Manually Check

- `index.html`
- `booking.html`
- `contact.html`
- `group-expeditions.html`
- `gallery.html`
- `leopards.html`
- `masterclass.html`
- `legal.html`
- `thank-you.html`

## Forms To Test

Submit one test entry for each Netlify form:

- `booking-inquiry`
- `group-expedition-inquiry`
- `group-mobile-inquiry`
- `masterclass-inquiry`

Expected result:

- Form submits successfully.
- User lands on `thank-you.html`.
- Netlify captures the submitted fields.
- No form claims instant confirmation or online booking.

## WhatsApp Link To Test

Every WhatsApp CTA should open:

- `https://wa.me/918387817123`

## Phone Link To Test

Every phone CTA should use:

- `tel:+918387817123`

## Manual Booking Disclaimer

Confirm the enquiry pages display:

Safari bookings are manually coordinated after enquiry. Final availability, permit requirements, vehicle allocation, pickup details, and payment process are confirmed over phone or WhatsApp.

Safari sightings are natural and cannot be guaranteed. Booking assistance is subject to availability, permit rules, vehicle allocation, and final confirmation over phone or WhatsApp.

## Photography Safari Page Decision

`masterclass.html` remains the deployed file path for now, but the public-facing copy has been reworded as Wildlife Photography Safari.

Reason:

- Avoids route churn before deployment.
- Keeps the existing `masterclass-inquiry` Netlify form stable.
- Aligns the public offer with manual safari enquiry scope rather than a course/product platform.

Optional future cleanup after launch:

- Rename route to `photography-safari.html`.
- Add a redirect from `/masterclass` to `/photography-safari`.
- Rename the form only if Netlify reporting continuity is not needed.

## Pre-Deploy Validation

Run from the project root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\tools\validate-static-site.ps1
```

Expected result:

- `Static site validation passed.`
- `Checked 9 HTML files`

## Post-Deploy Risks

- Image rights and client approval are still required before public commercial launch.
- `rana-leopard-gallery-portrait-placeholder.svg` is a placeholder and should be replaced with an approved real image.
- Tailwind CDN and Google Fonts remain external dependencies.
- Google Maps outbound links remain external dependencies.
- Netlify Forms must be tested on the deployed Netlify URL, not only by opening local files.
