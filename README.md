# Jhalana Wilds

Deployable static website created from the Google Stitch export.

## Current State

- Original Stitch exports remain in their source folders.
- Production-ready static pages live in `site/`.
- Screen mapping is documented in `docs/site-inventory.md`.
- Netlify is configured through `netlify.toml`.
- Booking, contact, and masterclass forms are configured as Netlify Forms.

## Preview Locally

Open:

```text
site/index.html
```

No build step is required.

## Validate Before Deploy

Run from this project root:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\validate-static-site.ps1
```

## Deploy

Option 1: Drag the `site` folder into Netlify Drop.

Option 2: Connect this project folder to Netlify. The included `netlify.toml` publishes `site/`.

## Important Notes

The current site still depends on external CDN assets from Google Fonts, Tailwind CDN, and Google-hosted Stitch image URLs. For a later hardening pass, download and localize those assets so the site remains stable even if remote generated-image URLs change.
