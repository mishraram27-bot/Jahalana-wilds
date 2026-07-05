# Post-Deployment QA

Live site: https://jhalanawilds.netlify.app/

QA date: 2026-07-05

Final deploy checked: `6a4a49a93af6df0008d80ce2`

Final pushed commit: `9845d1b`

## Summary

| Area | Result | Notes |
| --- | --- | --- |
| 9 public pages load | PASS | All pages returned HTTP 200. |
| Archived/internal links | PASS | No public links found to archived prototype/internal routes. |
| WhatsApp links | PASS | All detected WhatsApp links use `https://wa.me/918387817123`. |
| Phone links | PASS | Detected phone link uses `tel:+918387817123`. |
| Netlify Forms enabled | PASS | Netlify project reports Forms enabled. |
| Forms detected | PASS | All 4 required forms are detected in Netlify. |
| Live form submission | PASS | All 4 final live POST tests returned 200 and reached `/thank-you.html`. |
| Misleading product copy | PASS | Final scan found no dashboard, tracker, live availability, online payment, certificate, automated booking, or live sightings promises. |
| Mobile visual blockers | PASS WITH RISKS | Main mobile clipping blockers improved. Minor text-fit risks remain in deeper card/legal content. |

Final recommendation: functionally launch-ready for manual enquiry traffic. Keep a post-launch visual polish ticket for remaining lower-page text-fit/image-quality issues.

## Public Pages Checked

| Page | Result |
| --- | --- |
| `/` | 200 PASS |
| `/booking.html` | 200 PASS |
| `/contact.html` | 200 PASS |
| `/group-expeditions.html` | 200 PASS |
| `/gallery.html` | 200 PASS |
| `/leopards.html` | 200 PASS |
| `/masterclass.html` | 200 PASS |
| `/legal.html` | 200 PASS |
| `/thank-you.html` | 200 PASS |

## Forms

| Form | Live POST | Thank-you | Netlify dashboard |
| --- | --- | --- | --- |
| `booking-inquiry` | 200 PASS | PASS | PASS, submission count updated |
| `group-expedition-inquiry` | 200 PASS | PASS | PASS, submission count updated |
| `group-mobile-inquiry` | 200 PASS | PASS | PASS, submission count updated |
| `masterclass-inquiry` | 200 PASS | PASS | PASS, `last_submission_at` updated and dashboard contains a QA submission |

Note: source forms use `action="/thank-you.html"` as requested. Netlify normalizes processed live form markup to `action="/thank-you"` after form detection; live submissions still land on `https://jhalanawilds.netlify.app/thank-you.html`.

## Screenshot Evidence

Final current-deploy screenshots:

`qa-screenshots/live-final-current-all/`

Captured 45 screenshots: all 9 pages at desktop 1440px, laptop 1366px, tablet 768px, mobile 390px, and mobile 360px.

Additional focused current-deploy mobile screenshots:

`qa-screenshots/live-final-current/`

## Remaining Risks

| Severity | Risk | Pages |
| --- | --- | --- |
| Medium | Some lower-page card text still feels tight on 360px mobile. | `booking.html`, `legal.html` |
| Medium | Gallery still includes a placeholder-style image asset. | `gallery.html` |
| Low | Some hero crops are acceptable but not fully art-directed per device. | `booking.html`, `masterclass.html`, `leopards.html` |

## Validation

Local validation passed:

`powershell -NoProfile -ExecutionPolicy Bypass -File .\tools\validate-static-site.ps1`
