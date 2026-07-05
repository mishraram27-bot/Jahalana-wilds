# Jhalana Wilds Static Lead-Generation Site

This folder is the deployable public website. It is intentionally scoped as a static enquiry site for manual safari assistance.

## Public Launch Pages

- `index.html`
- `booking.html`
- `contact.html`
- `group-expeditions.html`
- `gallery.html`
- `leopards.html`
- `masterclass.html`
- `legal.html`
- `thank-you.html`

## Manual Booking Scope

The site does not provide live availability, online checkout, customer accounts, dashboards, certificate generation, live sightings, or automated permit booking.

All safari requests should go through:

- WhatsApp: `+91 8387817123`
- Phone: `+91 8387817123`
- Netlify enquiry forms

## Forms

The public Netlify forms are:

- `booking-inquiry` on `booking.html`
- `group-expedition-inquiry` on `contact.html`
- `group-mobile-inquiry` on `group-expeditions.html`
- `masterclass-inquiry` on `masterclass.html`

All forms submit to `thank-you.html`.

## Archived Pages

Non-launch Stitch screens are outside this deployable folder:

- Prototype pages: `archive/prototype-pages`
- Internal-only pages: `archive/internal-pages`

## Before Upload

From the project root, run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\tools\validate-static-site.ps1
```

The script checks the launch file set, broken internal links, Netlify forms, archived-page leakage, placeholder contacts, and misleading booking-platform copy.
