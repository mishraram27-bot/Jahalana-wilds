# Visual QA Fix Log

Live site: https://jhalanawilds.netlify.app/

Final deploy checked: `6a4a49a93af6df0008d80ce2`

## Fixes Applied

| Blocker | Fix |
| --- | --- |
| Header CTA clipped on mobile | Hid only the top-header WhatsApp control on mobile; in-page WhatsApp/enquiry CTAs remain available. |
| Hero text clipped on mobile | Reduced mobile heading scale, added explicit line breaks on affected hero headings, and shortened support copy. |
| Button overflow | Standardized mobile full-width buttons and shortened photography CTA text. |
| Horizontal layout pressure | Added mobile max-width/min-width constraints in `site/assets/launch-polish.css`. |
| Misleading copy | Rewrote tracker, portal, sighting probability/history, database, and escrow-style language. |

## Final Screenshot Set

Final full responsive screenshot folder:

`qa-screenshots/live-final-current-all/`

Total: 45 screenshots.

| Viewport | Width |
| --- | ---: |
| Desktop | 1440px |
| Laptop | 1366px |
| Tablet | 768px |
| Mobile | 390px |
| Mobile | 360px |

## Visual Result

| Area | Result | Notes |
| --- | --- | --- |
| Header/nav | PASS | No clipped top CTA on mobile after hiding cramped header WA control. |
| Hero text | PASS | Main affected hero headings now fit better at 360px. |
| Forms | PASS | Form layouts remain usable on mobile. |
| Bottom nav | PASS | Mobile bottom nav items remain visible. |
| Cards | PARTIAL PASS | Some lower card text remains tight, especially package/legal content. |
| Images | PARTIAL PASS | Cropping is acceptable for launch, but gallery placeholder remains a visual risk. |

## Remaining Visual Risks

| Severity | Issue | Recommendation |
| --- | --- | --- |
| Medium | Lower mobile card copy can still feel tight at 360px. | Follow-up polish pass on package/legal cards. |
| Medium | Placeholder-style gallery asset remains. | Replace with client-approved real image. |
| Low | Hero crops are serviceable but not fully art-directed. | Replace/recrop hero assets after client image approval. |

Final visual recommendation: acceptable for a static manual-enquiry launch, with a clear post-launch polish backlog.
