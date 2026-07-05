# CTA Audit

## Rule Applied

Public CTAs are restricted to WhatsApp, phone, Netlify enquiry forms, or public information pages.

## Language Replacements

| Original Language | Launch Language |
| --- | --- |
| Book Now | Enquire on WhatsApp |
| Check Availability | Check on WhatsApp |
| Reserve Seat | Send Enquiry |
| Secure Checkout | Contact for Booking Assistance |
| Confirm Booking | Request Booking Assistance |
| Pay Now | Removed |
| Book Standard | Send Enquiry |
| Book Premium Experience | Send Enquiry |
| Book Private Expedition | Send Enquiry |
| Book Intensive | Send Enquiry |
| Book Full Series | Send Enquiry |
| My Bookings | Enquiry |
| Book Expedition Online | Send Enquiry |
| Privacy Dashboard | Privacy Policy |

## Shared Button Routing

`site/site-actions.js` now routes button labels only to:

- WhatsApp: `https://wa.me/918387817123`
- Phone: `tel:+918387817123`
- Contact form: `contact.html`
- Public pages: `index.html`, `booking.html`, `gallery.html`, `leopards.html`, `masterclass.html`, `legal.html`

Archived pages were removed from shared routing:

- `log.html`
- `media-library.html`
- `sustainability-report.html`
- `field-report.html`

## Public Link Cleanup

- Removed public links to `log.html`
- Removed public links to `sustainability.html`
- Removed public links to `sustainability-report.html`
- Removed public links to `training.html`
- Removed public links to other archived screens

## Remaining Accepted CTAs

- `Enquire on WhatsApp`
- `Check on WhatsApp`
- `Send Enquiry`
- `Request Bespoke Quote`
- `Inquire for Private Workshop`
- `WhatsApp Concierge`
- `Call Now`
