# Demonstration: "Lootify" (Music Streaming Experience)

This demonstration shows how **`app-reverse-engineer`** turned a single one-sentence prompt into a complete, interactive, dark-mode music streaming web application reverse-engineered from Spotify.

---

### The Input Prompt
```text
using this skill of app reverse engineer, build me exact copy of spotify but name it "lootify"
```

---

### What the Skill Executed Autonomously (Zero-Upload)

1. **Autonomous Screenshot Discovery**:
   - Pulled high-resolution Play Store and App Store CDN screenshots.
   - Visually analyzed Spotify's dark canvas layout (`#121212`), compact sidebar, pill library chips, and sticky bottom music player.

2. **Design Token Synthesis**:
   - Generated [`DESIGN_SYSTEM.md`](./DESIGN_SYSTEM.md) detailing exact hex colors:
     - Obsidian Base: `#121212`
     - Card Gray: `#181818` (Hover: `#282828`)
     - Spotify Accent Green: `#1ed760`
     - Text Subtitle Gray: `#b3b3b3`

3. **Production Implementation**:
   - Built [`index.html`](./index.html) featuring:
     - 🎵 Custom SVG **Lootify** icon with glowing green sound waves.
     - 🗂️ Left Sidebar with Home, Search, and Library playlists with pill filter chips.
     - ⚡ 6-Card Quick-Access Grid with smooth hover-reveal of the circular green play button (`#1ed760`).
     - 🎛️ Sticky Bottom Player with real interactive audio playback (built-in Web Audio synth for ambient musical tones), scrubbable progress bar, animated equalizer visualizer bars, and volume slider.
     - 📋 Interactive Play Queue drawer and instant search filtering.

---

### How to Run This Example
```bash
# Simply open in any browser
open index.html

# Or serve locally
npx serve -l 3001 .
```
