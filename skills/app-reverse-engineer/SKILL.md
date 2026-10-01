---
name: app-reverse-engineer
description: >-
  Deconstructs any live website, webapp, Android APK, iOS app, or screen recording/screenshots to understand
  its UI, UX, visual theme, design tokens, animations, components, and interaction patterns, then adapts
  and remixes that design DNA to build the user's custom product idea. Supports autonomous online discovery
  so the user only needs to provide the app name.
---

# App Reverse Engineer & Remix Skill

This skill guides the agent through deconstructing any target application (Web, Android APK, iOS, or Design comp) into its foundational UI/UX DNA and transposing that aesthetic, interaction model, and component architecture into the user's new product idea.

**Autonomous Discovery Enabled**: The user does NOT need to provide an APK file or screenshots. If only an app or website name is given, the agent autonomously finds the source code, webapp, design system, or screen archives online.

---

## 1. Autonomous Online Discovery Mode (Zero-Upload Flow)

When the user gives just an app name (e.g., "Linear", "Duolingo", "Revolut", "Bumble", "Raycast", "Arc", "Cash App"):

### A. Codebase & Repository Hunting
1. **Official Open-Source Clients & SDKs**:
   - Query GitHub/GitLab for the official repo (e.g., Signal, Bluesky, Telegram, Cal.com, Supabase, Discourse).
2. **High-Fidelity Engineering Clones**:
   - Search GitHub for verified reverse-engineered clones or UI implementations:
     - `"<app name> clone" language:typescript stars:>50`
     - `"<app name> react native" OR "<app name> flutter"`
     - `"<app name> ui kit" OR "<app name> design system"`
   - Clone or inspect their components, Tailwind configs, and animation tokens.
3. **Design System & Storybook Hunting**:
   - Search for public design systems, component libraries, or Storybook instances:
     - `"<app name> design tokens" OR "<app name> styleguide"`
     - Inspect Figma Community UI kits or exported design token files (`tokens.json`).

### B. Live Webapp & PWA Inspection
1. **Locate the Web Client**:
   - Most modern mobile apps have a desktop or mobile web counterpart (e.g., `web.telegram.org`, `open.spotify.com`, `app.slack.com`, `linear.app/login`).
2. **Extract Real Design Tokens**:
   - Use `search_web` and `read_url_content` or browser inspection to extract:
     - Root CSS variables (`--background`, `--foreground`, `--accent`, `--radius`, `--font-*`).
     - Computed font families, weights, and tracking.
     - Layout grids, flex proportions, sticky navigations.
     - Animation keyframes and transition timing curves.

### C. Public UI/UX Archives & Teardowns
1. Inspect public design teardowns and UI breakdowns from sources like Mobbin, Screenlane, UXArchive, and App Store / Play Store CDN preview assets.
2. Extract the screen flows: Onboarding -> Discovery -> Detail -> Actions -> Sheet drawers.

### D. Autonomous Screenshot Acquisition & Visual Ingestion (Mandatory Visual Seeing)
Code tokens alone are not enough—visual layout, optical balance, and spacing require seeing actual screenshots. The agent MUST automatically acquire and visually inspect screenshots before building:
1. **App Store & Play Store CDN Scraping**:
   - Query Google Play (`play.google.com/store/apps/details?id=...`) or Apple App Store (`apps.apple.com/...`).
   - Extract the direct high-resolution image CDN URLs (`mzstatic.com`, `googleusercontent.com`).
   - Download them directly to the scratch folder:
     ```bash
     curl -s "<cdn_screenshot_url>" -o scratch/screen_1.png
     ```
2. **GitHub Screenshot Crawling**:
   - High-fidelity clone repos always contain screenshots in their `README.md`, `assets/`, or `screenshots/` folders.
   - Download the raw PNGs/JPEGs to scratch.
3. **Automated Web Page / PWA Screen Capture**:
   - For web apps, capture viewport screenshots (desktop 1440px, mobile 390px) using headless browser automation or terminal tools.
4. **Visual Multimodal Inspection**:
   - Run `view_file` on the downloaded screenshots. Because `view_file` supports images natively, the vision model inspects the real pixels—checking optical weight, white space padding, icon-to-text alignment, and real visual contrast.

---

## 2. Direct Input Ingestion (When User Provides Assets)

If the user *does* supply a file or link:

### A. Live Website / Web Application
- Inspect live DOM, computed CSS properties, and SVG icons.
- Capture full-page or section views across desktop (1440px) and mobile (390px).

### B. Android APK
- Unpack the APK if provided locally:
  ```bash
  unzip -q target_app.apk -d extracted_apk/
  ```
- Inspect `res/values/colors.xml`, `styles.xml`, `themes.xml` for exact hex colors.
- Extract raw icons and vector drawables from `res/drawable/` and `res/mipmap/`.
- Inspect font files in `assets/fonts/` or `res/font/`.

### C. iOS App / Screen Recordings / Screenshots
- Multimodal analysis of screenshots or video frames.
- Measure motion physics (spring stiffness, bottom sheet drag physics, layout transitions).

---

## 3. The 5-Point Deconstruction Matrix

Before generating any code, produce an audit breaking down the target app across these 5 dimensions:

### 1. Visual Theme & Design Tokens
- **Color Architecture**: Dominant backgrounds, card/surface elevations, brand accents, border opacity, text contrast hierarchy.
- **Typography System**: Font family, display/heading/body scale, line heights, letter-spacing.
- **Surfaces & Borders**: Corner radius convention (0-4px sharp, 8-12px modern soft, pill 9999px), subtle border strokes (`1px solid rgba(255,255,255,0.08)`), blur filters / glassmorphism (`backdrop-blur-md`).
- **Depth & Lighting**: Shadow elevations, inner glows, subtle ambient gradients.

### 2. Component & Element Breakdown
- **App Shell**: Top navigation (sticky, floating, blurred, transparent), bottom navigation / dock, side rail.
- **Card Anatomy**: Padding, header-body-footer layout, interactive states (hover lift, active scale, border glow).
- **Controls & Form Elements**: Buttons (primary solid, secondary ghost, icon buttons), inputs with active focus rings, segmented controls, toggle switches, tags/badges.
- **Overlays**: Bottom sheets with drag handles, centered dialogs, dropdown popovers, slide-over drawers.

### 3. Motion & Micro-Interactions
- **Physics**: Timing curves (spring physics vs cubic-bezier ease-out), durations (150ms snappy vs 350-500ms morphs).
- **Interactive Feedback**: Button tap scale (`active:scale-98`), hover elevation, icon morphing, stagger reveals for list items.
- **Page Transitions**: Shared element transitions, slide-over modals, fade-and-scale dialogs.

### 4. UX Architecture & Cognitive Flow
- **Information Density**: High-density productivity vs breathable spacious consumer.
- **Primary vs Secondary Actions**: Floating action buttons, persistent primary sticky bars, contextual inline actions.
- **Feedback & States**: Skeleton loaders, optimistic updates, empty states with clear calls to action, inline validations.

### 5. Content & Tone of Voice
- Micro-copy style (ultra-terse, playful, or enterprise).

---

## 4. The Transposition & Remix Step (Target App DNA -> User's Idea)

**Never make a blind 1:1 copy of the target app's content.** Instead:
1. **Extract the DNA**: Retain the exact visual polish, layout rhythm, color temperature, and motion feel of the reference app.
2. **Map to the User's Domain**:
   - If the reference is **Spotify** and the user wants a **Podcast Learning App**, adapt the mini-player into a persistent lesson/note audio drawer.
   - If the reference is **Linear** and the user wants a **Real Estate Deal Pipeline**, build high-density deal boards with keyboard shortcuts, command palette (`Cmd+K`), and metallic accents.
3. **Draft a `DESIGN_SYSTEM.md`**: Summarize colors, typography, components, and motion rules tailored to the user's project.

---

## 5. Implementation Guidelines

When building the user's application:
1. **Choose the Right Stack**:
   - **Web**: Next.js / React + Tailwind CSS + Framer Motion + Lucide Icons / Radix UI.
   - **Mobile**: React Native + Expo + NativeWind / StyleSheet + Reanimated + Expo Haptics.
2. **Strict Quality Standards**:
   - Zero generic AI slop: Avoid oversized purple-blue gradients on dark backgrounds unless the reference specifically uses them.
   - Implement real interactive motion (Framer Motion `layoutId`, spring transitions, gesture drag for sheets).
   - Use complete code—no truncation, no placeholders.
   - Provide realistic, rich demo data fitting the user's domain.
