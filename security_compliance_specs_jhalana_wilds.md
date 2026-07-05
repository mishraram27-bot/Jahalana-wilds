# Jhalana Wilds: Security, Privacy & Performance Specification (V1.0)

## 1. Data Security & Integrity
*   **Field Sighting Encryption:** All sighting data transmitted from the Driver Portal and Field Companion app is encrypted via TLS 1.3 to prevent intercept or spoofing of location data.
*   **Verification Logic:** Sighting data remains in a 'Pending' state (unobservable to the public) until dual-factor verification is completed by a Senior Naturalist via the Verification Queue.
*   **Role-Based Access Control (RBAC):** 
    *   **Drivers:** Write-only access to sighting logs.
    *   **Naturalists:** Verification and ID management access.
    *   **Admin:** Full system overrides and financial data access.
    *   **Guests:** Read-only access to public-facing sighting radars.

## 2. Privacy & Ethical Compliance
*   **Leopard Anonymity:** While leopards have public names (Rana, Flora), precise GPS coordinates are delayed by 15-30 minutes on the public tracker to prevent 'Gypsy Crowding' and protect animal welfare.
*   **Guest Privacy:** All guest identification in the 'Citizen Scientist' database is anonymized unless explicit consent is given for the 'Members Gallery' spotlight.

## 3. Performance & Resilience
*   **Edge Delivery:** The Live Radar and Media Library use a global CDN to ensure <200ms latency for international guests booking from US/Europe/UAE.
*   **Offline Mode:** The Field Companion and Driver Portal support offline caching for the Jhalana 'Black Zones' where cellular reception is spotty; data auto-syncs upon re-entry to LTE/5G range.

## 4. Accessibility (A11Y)
*   **Contrast Standards:** WCAG 2.1 Level AA compliance across all modes.
*   **Field Utility:** High-contrast Dark Mode icons (48px touch targets) for ease of use in vibrating safari vehicles.
