# Demonstration: Instagram Mobile Web Experience

This demonstration shows how **`app-reverse-engineer`** turned a single mobile prompt into a complete, interactive, gesture-driven Instagram mobile app clone.

---

### The Input Prompt
```text
how about mobile version, build me instagram using app reverse engineer
```

---

### What Was Built Autonomously:
* 📸 **App Store CDN Scrape**: Scraped official high-res mobile feed & following screenshots from Apple's App Store CDN.
* 📱 **Native Mobile Framing**: iPhone 16 Pro mockup with Dynamic Island, 9:41 status bar, and home indicator.
* ⭕ **Stories Tray & Viewer**: 
  - Dynamic gradient rings (`linear-gradient(45deg, #f09433, #dc2743, #bc1888)`).
  - Tap any story to open a full-screen story viewer with auto-advancing segmented progress bars and reaction inputs.
* ❤️ **Double-Tap Heart Gesture**: Double-clicking/tapping any post spawns a floating, bouncing white heart pop animation.
* 💬 **Interactive Comments Sheet**: Slide-up bottom sheet to view and post real comments.
* 🎛️ **Full Tab Navigation**: Home Feed, 3-Column Explore Grid, Vertical Reels Feed, and User Profile.
* 🌓 **Dark Mode / Light Mode**: Seamless toggle between AMOLED black and classic light mode.

---

### How to Run
```bash
open index.html
```
