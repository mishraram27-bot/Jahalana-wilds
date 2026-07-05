# Jhalana Wilds: Production File Mapping & Linking Guide

This document provides the definitive mapping between the designed screens and the filenames required for a successful Netlify deployment. Use these exact names to ensure all cross-page links work correctly.

## 1. Core Public Site (Desktop)
These are the primary pages your guests will visit. Save these as HTML files in your root folder.

| Production Filename | Screen Title in Stitch | Purpose |
| :--- | :--- | :--- |
| **index.html** | Jhalana Wilds - Homepage (Linked) | The primary landing page with Live Tracker and highlights. |
| **leopards.html** | Meet the Leopards - Guide (Linked) | The "Citizen Scientist" guide to individual leopards. |
| **booking.html** | Expeditions & Booking (Linked) | Package selection and check availability flow. |
| **log.html** | Sightings Log (Linked) | Historical calendar of leopard sightings. |
| **contact.html** | Contact & Group Expeditions (Linked) | Inquiry form for specialized and corporate trips. |
| **legal.html** | Legal & Policies (Linked) | Terms of service, privacy, and refund policies. |
| **masterclass.html** | Elite Photography Masterclass | Landing page for premium workshops. |

## 2. Mobile Experience
The mobile landing page is designed as the primary entry point for mobile users.

| Production Filename | Screen Title in Stitch | Purpose |
| :--- | :--- | :--- |
| **mobile.html** | Mobile Landing (Linked) | Optimized landing page for mobile traffic. |

## 3. Operational & Professional Portals
These pages are for internal use or elite guest fulfillment.

| Production Filename | Screen Title in Stitch | Purpose |
| :--- | :--- | :--- |
| **driver.html** | Driver Portal - Dark Mode Optimized | Field logging tool for naturalists and drivers. |
| **verification.html** | Naturalist Verification Queue | Operational vetting for field sightings. |
| **certificate.html** | Citizen Scientist Certificate | Premium fulfillment asset for guests. |
| **dashboard.html** | Client Admin Dashboard | Executive overview of analytics and bookings. |
| **sustainability.html** | Sustainability Dashboard | Conservation impact tracking. |

## 4. Deployment Instructions
1. **Open each screen** in the Stitch interface.
2. **Click ⟨/⟩ View Code** and copy the entire block of code.
3. **Paste into a text editor** and save with the **Production Filename** listed above.
4. **Group all files** into a single folder (no subfolders).
5. **Drag and drop** the folder into [Netlify Drop](https://app.netlify.com/drop).

---
**Status:** V1 Production Ready.
