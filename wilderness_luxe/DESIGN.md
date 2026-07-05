---
name: Wilderness Luxe
colors:
  surface: '#f8f9fa'
  surface-dim: '#d9dadb'
  surface-bright: '#f8f9fa'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f4f5'
  surface-container: '#edeeef'
  surface-container-high: '#e7e8e9'
  surface-container-highest: '#e1e3e4'
  on-surface: '#191c1d'
  on-surface-variant: '#404944'
  inverse-surface: '#2e3132'
  inverse-on-surface: '#f0f1f2'
  outline: '#707974'
  outline-variant: '#bfc9c3'
  surface-tint: '#2b6954'
  primary: '#003527'
  on-primary: '#ffffff'
  primary-container: '#064e3b'
  on-primary-container: '#80bea6'
  inverse-primary: '#95d3ba'
  secondary: '#6a5d44'
  on-secondary: '#ffffff'
  secondary-container: '#f1ddbe'
  on-secondary-container: '#6f6148'
  tertiary: '#4a2400'
  on-tertiary: '#ffffff'
  tertiary-container: '#6a3700'
  on-tertiary-container: '#ff9939'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#b0f0d6'
  primary-fixed-dim: '#95d3ba'
  on-primary-fixed: '#002117'
  on-primary-fixed-variant: '#0b513d'
  secondary-fixed: '#f3e0c1'
  secondary-fixed-dim: '#d7c4a6'
  on-secondary-fixed: '#241a07'
  on-secondary-fixed-variant: '#52452e'
  tertiary-fixed: '#ffdcc3'
  tertiary-fixed-dim: '#ffb77d'
  on-tertiary-fixed: '#2f1500'
  on-tertiary-fixed-variant: '#6e3900'
  background: '#f8f9fa'
  on-background: '#191c1d'
  surface-variant: '#e1e3e4'
  deep-forest: '#064E3B'
  aravali-sand: '#E7D4B5'
  sunset-amber: '#D97706'
  off-white: '#F9FAFB'
  ink-black: '#1A1C1E'
  leopard-gold: '#FFE9BF'
typography:
  display-lg:
    fontFamily: Playfair Display
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 36px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Playfair Display
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.3'
  headline-sm:
    fontFamily: Playfair Display
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.4'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-bold:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: '1.2'
    letterSpacing: 0.05em
  stats-number:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '700'
    lineHeight: '1'
    letterSpacing: -0.01em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  base: 8px
  container-max: 1280px
  gutter-desktop: 32px
  margin-desktop: 64px
  margin-mobile: 20px
  section-gap: 120px
  component-gap: 24px
---

## Brand & Style

The brand identity centers on "Wilderness Luxe," a philosophy that bridges the gap between raw, untamed nature and sophisticated, high-end expedition services. The target audience includes affluent travelers, wildlife photographers, and eco-conscious adventurers seeking a secure yet exhilarating encounter with the leopards of Jhalana.

The design style is **Corporate Modern with Tactile accents**. It leverages a high-end editorial feel through expansive whitespace and precise typography, while incorporating "Citizen Scientist" data visualizations to reinforce expertise. The UI must feel authoritative and secure, evoking the reliability of a premium concierge service and the excitement of a field researcher's journal.

## Colors

The palette is rooted in the landscape of the Aravali hills. **Deep Forest Emerald** serves as the primary anchor, used for headers, primary buttons, and authoritative elements to signify security and the jungle canopy. **Aravali Sand** is the secondary neutral, used for subtle section backgrounds and decorative dividers to provide warmth without sacrificing cleanliness.

**Sunset Amber** is reserved for high-priority calls to action and "Live Sighting" indicators, providing a high-contrast pop against the forest tones. **Off-White** provides the primary canvas, ensuring a breathable, premium feel that allows high-resolution wildlife photography to take center stage.

## Typography

The typography strategy employs a classic serif-sans pairing to balance tradition with modernity. **Playfair Display** provides the authoritative, "expedition-log" feel for all headings, emphasizing the premium nature of the brand.

**Inter** is utilized for all functional text, including body copy, data-heavy leopard profiles, and booking forms. Its high x-height and neutral character ensure maximum legibility on mobile devices. For "Citizen Scientist" elements, such as leopard tracking data or GPS coordinates, use the **label-bold** style to create a technical, field-report aesthetic.

## Layout & Spacing

The layout follows a **Fixed Grid** model on desktop (12 columns) and a **Fluid Grid** on mobile (4 columns). To achieve the "Luxe" feel, the system utilizes generous section vertical spacing (120px) to prevent the interface from feeling cluttered or "cheap."

Layouts should prioritize high-impact imagery. Large-scale hero sections should bleed to the edge of the viewport, while content containers remain centered. On mobile, use a single-column reflow with increased vertical padding to maintain the sense of space and ease of interaction for users on the move.

## Elevation & Depth

This design system avoids heavy shadows in favor of **Tonal Layers** and **Soft Ambient Shadows**. Depth is primarily created by stacking Aravali Sand surfaces over Off-White backgrounds.

When elevation is required for interactivity (e.g., hover states on leopard profiles), use an extremely soft, diffused shadow: `box-shadow: 0 10px 30px rgba(6, 78, 59, 0.05)`. This subtle green-tinted shadow ensures the depth feels organic to the forest theme. For "Live Sighting" alerts, use a semi-transparent Backdrop Blur (Glassmorphism) to overlay real-time data over wildlife imagery without obscuring the visual experience.

## Shapes

The shape language is **Soft**, utilizing a 4px (0.25rem) base radius. This minimal rounding maintains a sense of precision and professional architectural structure while removing the "harshness" of sharp corners.

Buttons and card containers should strictly adhere to this radius. The only exception is for "Citizen Scientist" badges and "Live" indicators, which may use a **Pill-shape** to distinguish them as dynamic, status-driven UI elements rather than structural ones.

## Components

### Buttons
- **Primary:** Deep Forest Emerald background with Off-White text. Rectangular with a 4px radius. 
- **Secondary:** Aravali Sand background with Deep Forest Emerald text. Use for less critical actions.
- **Ghost:** Transparent background with an Amber border, specifically for "Check Availability" or secondary CTAs in hero sections.

### Leopard Profile Cards
Incorporate a vertical card structure featuring a high-resolution portrait, the leopard's name in Playfair Display, and a "Sighting Frequency" bar. Include a "Citizen Scientist" badge in the corner of these cards.

### Live Sighting Indicators
A pulsing Sunset Amber dot paired with "LIVE" text in the `label-bold` typography style. These should be housed in a small, pill-shaped container with a light backdrop blur.

### Input Fields & Forms
Clean, 1px Deep Forest Emerald borders on Off-White backgrounds. Labels should be small and bold (`label-bold`) to emphasize the "secure booking" aspect. Focused states should use a 2px Aravali Sand glow.

### Ethical/Sustainable Badges
Small, circular or geometric icons in Deep Forest Emerald that appear on booking summaries, highlighting "Low Impact" or "Community Support" certifications.