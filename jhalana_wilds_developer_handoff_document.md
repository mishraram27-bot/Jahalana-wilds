# Jhalana Wilds: Developer Handoff & Technical Specification (V1.0)

## 1. Project Overview
**Brand Identity:** Wilderness Luxe  
**System Architecture:** "Citizen Scientist" Data Loop (Field -> Verification -> Public -> Fulfillment)  
**Primary Tech Stack:** HTML5, Tailwind CSS, Lucide Icons (Visual Framework). Designed for integration with RESTful APIs or Firebase Real-time DB.

---

## 2. Core Data Loops & API Specifications

### Loop A: Field Sighting Entry (Driver Portal)
*   **Source:** `{{DATA:SCREEN:SCREEN_46}}` (Mobile)
*   **Write Endpoint:** `POST /api/v1/sightings/log`
*   **Payload Requirements:**
    *   `leopard_id`: String (UUID mapping to individual leopards e.g., "Rana", "Flora")
    *   `location`: Object { lat: Float, lng: Float }
    *   `zone`: Enum ["Jhalana Proper", "Amagarh Ridge", "Beed Papad"]
    *   `timestamp`: ISO8601 String
    *   `media_url`: String (Cloudinary/S3 link for verification photo)
    *   `behavior_tags`: Array ["Hunting", "Mating", "Resting"]
*   **Security:** Requires Bearer Token (Driver Role). GPS coordinates should be delayed by 15 mins for public output to prevent crowding.

### Loop B: Naturalist Verification Queue
*   **Source:** `{{DATA:SCREEN:SCREEN_15}}` (Desktop)
*   **Read Endpoint:** `GET /api/v1/sightings/pending`
*   **Write Endpoint:** `PATCH /api/v1/sightings/verify/{sighting_id}`
*   **Logic:** 
    *   Status transition: `PENDING` -> `VERIFIED` or `REJECTED`.
    *   Verified sightings trigger a webhook to update the **Live Radar** and the **Sightings Log**.
    *   Verification requires manual ID confirmation (Rosette Matching).

### Loop C: Public Live Sightings Radar
*   **Source:** `{{DATA:SCREEN:SCREEN_74}}` (Desktop Homepage)
*   **Subscription:** `WebSocket` or `SSE` (Server-Sent Events) on `/api/v1/sightings/live`
*   **Frontend Logic:** 
    *   Map markers should fade out after 4 hours of inactivity.
    *   "Probability" calculation: `(Verified_Sightings_Last_7_Days / Total_Safaris) * 100`.

### Loop D: Citizen Scientist Certification (Fulfillment)
*   **Source:** `{{DATA:SCREEN:SCREEN_45}}` (Premium Certificate)
*   **Trigger:** Successful checkout + verified sighting log matching the guest's permit UUID.
*   **PDF Generation Logic:** 
    *   Template: `{{DATA:SCREEN:SCREEN_45}}`
    *   Dynamic Fields: `Guest Name`, `Date of Sighting`, `Leopard Name`, `Verification Signature`.
    *   Delivery: Email (SMTP) + Guest Dashboard link.

---

## 3. Design Tokens (Wilderness Luxe)

### Colors (Tailwind Config)
```javascript
module.exports = {
  theme: {
    extend: {
      colors: {
        'deep-forest': '#064e3b',   // Primary Anchor
        'sunset-amber': '#f59e0b',  // CTA / Alert Action
        'aravali-sand': '#f3f4f5',  // Surface Neutral
        'ink-black': '#0a0a0a',     // Dark Mode / Field Tool Background
        'leopard-gold': '#d4af37',  // Premium Highlights
      }
    }
  }
}
```

### Typography
*   **Headlines:** `Playfair Display`, serif. (Authority & Heritage)
*   **Body & UI:** `Inter` or System Sans, sans-serif. (High legibility for field data)

---

## 4. Mobile & Offline Performance
*   **Edge Caching:** Field tools (Driver Portal) must support `ServiceWorker` caching for offline logging in low-reception zones.
*   **Sync Logic:** Use `IndexedDB` for local storage of sightings; auto-push when connectivity (4G/5G) is restored.
*   **Contrast Standards:** WCAG 2.1 AA. Ensure 48px touch targets for safari vehicle use.

---

## 5. Security & Privacy Specs
*   **Data Masking:** Anonymize guest PII in public "Members Gallery" unless consent flag is `true`.
*   **Rate Limiting:** Protect `/api/v1/booking/check` to prevent bot scraping of permit availability.
*   **Audit Trail:** Every sighting verification must log the `naturalist_id` for accountability.

---
**Status:** Ready for API Integration.
