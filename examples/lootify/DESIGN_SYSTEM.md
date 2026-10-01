# Lootify Design System (Reverse-Engineered from Spotify)

This design system decodes the exact visual tokens, component anatomy, layout hierarchy, and micro-interactions of Spotify's modern desktop and web applications, adapted for **Lootify**.

---

## 1. Visual Theme & Color Architecture

| Token Name | Hex Code | Visual Role |
| :--- | :--- | :--- |
| `--lootify-black-bg` | `#121212` | Main viewport & canvas background |
| `--lootify-sidebar-card` | `#121212` | Left sidebar panels |
| `--lootify-card-base` | `#181818` | Album/Track card default background |
| `--lootify-card-hover` | `#282828` | Album card hover elevation state |
| `--lootify-green-primary`| `#1ed760` | Signature green play button, active indicators |
| `--lootify-green-hover` | `#1fdf64` | Hover state for primary buttons |
| `--lootify-text-main` | `#ffffff` | Primary headings, titles, active track names |
| `--lootify-text-sub` | `#b3b3b3` | Artist names, secondary info, captions |
| `--lootify-player-bg` | `#000000` | Bottom sticky player bar background |
| `--lootify-slider-track` | `#4d4d4d` | Slider inactive track |
| `--lootify-slider-fill` | `#1ed760` | Slider active progress fill on hover |

---

## 2. Typography & Component Anatomy

- **Font Family**: Circular Spotify equivalent -> `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif`
- **Headings**: Extra-bold modern geometric display (`font-weight: 700 / 800; letter-spacing: -0.04em;`)
- **Quick-Access Grid**:
  - 2-row x 3-column compact items with 64px image thumbnail, bold title, and instant floating green play button on hover (`opacity-0 group-hover:opacity-100 transform translate-y-2 group-hover:translate-y-0 transition-all`).
- **Sticky Bottom Music Player**:
  - Left: 56px album thumbnail, track name, artist link, animated heart toggle.
  - Center: Shuffle, Previous, Play/Pause circle button, Next, Repeat, scrubbable progress bar with real-time timestamps.
  - Right: Lyrics, Queue list toggle, Speaker/Volume slider.
