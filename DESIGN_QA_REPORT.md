# Design QA Report

## Scope

Visual polish pass across the 9 public launch pages only:

- `site/index.html`
- `site/booking.html`
- `site/contact.html`
- `site/group-expeditions.html`
- `site/gallery.html`
- `site/leopards.html`
- `site/masterclass.html`
- `site/legal.html`
- `site/thank-you.html`

No archived prototype/internal pages were restored.

## Visual Issues Found

| Issue | Pages affected |
| --- | --- |
| Stitch screens used slightly different spacing, gutters, shadows, radii, button sizing, and form styling. | All public pages |
| Header/navigation structure varied by page, with duplicate `Leopards` links and inconsistent active-state styling. | Most public pages |
| Hero sections used different heights, type scales, and image treatment, causing the site to feel assembled from separate screens. | `index.html`, `booking.html`, `contact.html`, `gallery.html`, `group-expeditions.html`, `leopards.html`, `masterclass.html` |
| CTAs used inconsistent button heights, radius, hover treatment, and visual priority. | All public pages with CTAs |
| Forms had inconsistent input styling, label hierarchy, spacing, and disclaimer treatment. | `booking.html`, `contact.html`, `group-expeditions.html`, `masterclass.html` |
| Gallery hero had duplicate `Send Enquiry` CTAs and page controls that visually competed with the main content. | `gallery.html` |
| Homepage retained live/radar-style wording and timestamp-like snippets that looked like a live tracking product. | `index.html` |
| Footer spacing, background, and structure varied between pages. | Most public pages |
| Mobile CTA sizing and spacing needed a consistent tap-target system. | All public pages |

## Fixes Applied

- Added shared visual polish stylesheet: `site/assets/launch-polish.css`.
- Linked the shared stylesheet from all 9 public HTML pages.
- Standardized container width, horizontal gutters, section spacing, grid gaps, card radius, border treatment, and shadow style.
- Standardized heading hierarchy with responsive `clamp()` sizing for H1, H2, and H3.
- Standardized body text, labels, captions, and line heights.
- Made WhatsApp CTAs visually primary and consistent across pages.
- Standardized secondary button and form submit treatment.
- Improved mobile tap targets and mobile spacing.
- Added consistent form control styling for inputs, selects, textareas, focus states, and labels.
- Made manual booking disclaimers readable but less visually dominant.
- Removed duplicate `Leopards` nav links across public pages.
- Neutralized inconsistent active nav underline treatment so incorrect current-page states do not look broken.
- Improved footer spacing and shared footer background treatment.
- Converted homepage live-like snippets into evergreen safari planning context.
- Reworked gallery hero CTAs into one primary WhatsApp link and one secondary contact/enquiry link.
- Preserved `masterclass.html` route but continued public wording as Wildlife Photography Safari.
- Added missing `site/assets/secure-assistance-badge.png` local asset and removed payment-style wording near that badge.
- Added shared button routing for `Call for Booking Assistance`, `Inquire for Photography Safari`, and `Leopard Guide`.

## Mobile Responsiveness

Responsive CSS was added for:

- Smaller mobile gutters.
- Shorter mobile section spacing.
- Balanced mobile hero typography.
- Full-width mobile CTAs where appropriate.
- Compact icon-only buttons.
- Hidden non-essential desktop nav links on small screens.
- Mobile-safe form controls with 16px input text to avoid zooming.
- Hidden floating desktop-only homepage planning widget on narrow screens.

## Image QA

Localized images are now visually governed by consistent object-fit and crop rules.

Remaining image concern:

- `site/assets/images/rana-leopard-gallery-portrait-placeholder.svg` is still a placeholder and should be replaced with an approved real gallery image.

Recommended replacements before final brand launch:

- Replace the gallery placeholder image.
- Review all localized Stitch/Google-generated images for brand fit and client approval.
- Consider replacing lower-resolution 512px hero/section images with stronger, approved high-resolution photography over time.

## Remaining Visual Risks

- I could not run a browser screenshot/mobile viewport pass because local Playwright is not installed and no direct browser screenshot tool was available in this session.
- Some page sections still inherit complex Stitch markup; the shared polish layer makes them visually consistent, but a future code cleanup could simplify the HTML.
- External Tailwind and Google Fonts remain render dependencies.
- The page is now launch-safe and more cohesive, but final subjective polish should still be reviewed in the deployed browser on real mobile devices.

## Validation

The static validator was run after the visual polish pass and passed.
