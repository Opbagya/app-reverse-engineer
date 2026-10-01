<p align="center">
  <img src="./assets/banner.jpg" alt="App Reverse Engineer 3-Step Flow Banner" width="100%" />
</p>

<h1 align="center">App Reverse Engineer</h1>

<p align="center">
  <strong>Tell the AI any app name. It looks up the app online, steals its visual DNA, and builds your dream idea.</strong>
</p>

<p align="center">
  <a href="./LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License: MIT" /></a>
  <a href="https://github.com/Opbagya/app-reverse-engineer/stargazers"><img src="https://img.shields.io/github/stars/Opbagya/app-reverse-engineer.svg?style=flat" alt="GitHub stars" /></a>
  <a href="https://github.com/Opbagya/app-reverse-engineer/issues"><img src="https://img.shields.io/github/issues/Opbagya/app-reverse-engineer.svg" alt="Issues" /></a>
  <a href="https://github.com/Opbagya/app-reverse-engineer/pulls"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs Welcome" /></a>
</p>

<p align="center">
  <a href="https://opbagya.github.io/app-reverse-engineer/instagram/">
    <img src="https://img.shields.io/badge/Live%20Demo%201-Instagram%20Mobile-e4405f?style=for-the-badge&logo=instagram&logoColor=white" alt="Live Demo 1 Instagram Mobile" />
  </a>
  &nbsp;
  <a href="https://opbagya.github.io/app-reverse-engineer/">
    <img src="https://img.shields.io/badge/Live%20Demo%202-Try%20Sahara%20(Amazon)-orange?style=for-the-badge&logo=googlechrome&logoColor=white" alt="Live Demo 2 Sahara" />
  </a>
  &nbsp;
  <a href="https://opbagya.github.io/app-reverse-engineer/lootify/">
    <img src="https://img.shields.io/badge/Live%20Demo%203-Try%20Lootify%20(Spotify)-1ed760?style=for-the-badge&logo=spotify&logoColor=white" alt="Live Demo 3 Lootify" />
  </a>
</p>

---

## 👶 Explain Like I'm 10 (ELI10)

> **Imagine you want to build a cool toy castle, but you love the color and towers of Disneyland's castle.**
> 
> Normally, an AI asks you: *"Please send me 20 photos of Disneyland, upload the blueprints, and tell me the exact color codes."* That's tiring!
> 
> With **App Reverse Engineer**, you just say:
> > *"Build my castle, but give it the vibe of Disneyland."*
> 
> You **do NOT need to take screenshots**. You **do NOT need to download any APK files**.
> 
> The AI goes onto the internet by itself, finds Disneyland's pictures, examines the towers and colors with its own eyes, and builds your custom castle right in front of you in seconds.

---

## 🚫 No Screenshots or Files Needed

* ❌ **No APK files to download or upload**
* ❌ **No iOS screenshots to take**
* ❌ **No CSS files or color codes to copy-paste**

**How it works:** You only type the **app name** (e.g. *Spotify, Amazon, Linear, Duolingo, Uber*). The AI automatically hunts down the app on Google Play, the App Store, and live websites, downloads real screenshots in the background, looks at them with computer vision, and starts coding.

---

## 🚀 Quick Install

### 1-Line Terminal Install (Recommended)
```bash
curl -fsSL https://raw.githubusercontent.com/Opbagya/app-reverse-engineer/main/skill.sh | bash
```

### Or Use with Any AI Tool
* **Google Antigravity / Gemini CLI**: Install directly into `~/.gemini/config/skills/app-reverse-engineer/`.
* **Claude Code, Cursor, or Windsurf**: Copy the contents of [`skills/app-reverse-engineer/SKILL.md`](./skills/app-reverse-engineer/SKILL.md) into your project's rules or prompt.

---

## 💬 How to Use It

In your AI chat, simply say:

```text
Use app-reverse-engineer on [App Name] to build [Your Idea]
```

### Examples:
* *"Use app-reverse-engineer on Spotify to build Lootify, a music streaming player for indie artists."*
* *"Use app-reverse-engineer on Amazon to build Sahara, an e-commerce marketplace."*
* *"Use app-reverse-engineer on Linear to build a high-speed bug tracker for game developers."*

---

## 🌟 Live Proof: See What 1 Sentence Can Build

Here are three complete, production-grade applications built with **just one sentence each**:

### Demonstration 1: Instagram Mobile Experience (App Reverse-Engineered)
👉 **[Click Here to Test the Live Instagram Mobile Webapp](https://opbagya.github.io/app-reverse-engineer/instagram/)**

* **The Prompt:**
  ```text
  how about mobile version, build me instagram using app reverse engineer
  ```
* **What the AI Did Autonomously:**
  1. Pulled high-resolution mobile feed screenshots directly from Apple's App Store CDN.
  2. Extracted the signature Instagram gradient story ring tokens, AMOLED pitch dark styling, and mobile touch dimensions.
  3. Built an interactive mobile experience with:
     - 📱 **iPhone 16 Pro Framing**: Dynamic Island, status bar, and home indicator.
     - ⭕ **Stories Tray & Viewer**: Tap any friend's story to open a full-screen story viewer with auto-advancing segmented progress bars!
     - ❤️ **Double-Tap Heart Gesture**: Double-clicking/tapping any photo triggers a floating, bouncing white heart pop animation.
     - 💬 **Interactive Comments Sheet**: Slide-up bottom drawer to type and post comments.
     - 🎛️ **Full 4-Tab Navigation**: Home Feed, 3-Column Explore Grid, Full-Height Vertical Reels with spinning audio disc, and User Profile.
     - 🌓 **Dark / Light Mode**: Smooth toggle between clean white and AMOLED black.
* **Code folder:** [`examples/instagram-mobile/`](./examples/instagram-mobile/)

---

### Demonstration 2: "Sahara" (Amazon Reverse-Engineered)
👉 **[Click Here to Test the Live Sahara Webapp](https://opbagya.github.io/app-reverse-engineer/)**

* **The Prompt:**
  ```text
  using this skill of app reverse engineer, build me exact copy of amazon but name it "sahara"
  ```
* **What the AI Did Autonomously:**
  1. Found Amazon's official App Store screenshots online.
  2. Extracted the exact navy (`#131921`), gold (`#febd69`), and deal red (`#cc0c39`) tokens.
  3. Built an interactive e-commerce store with omnibox search, 4-quadrant bento cards, countdown deals, a working shopping cart, and a floating **Dune AI** shopping assistant.
* **Code folder:** [`examples/sahara/`](./examples/sahara/)

---

### Demonstration 3: "Lootify" (Spotify Reverse-Engineered)
👉 **[Click Here to Test the Live Lootify Webapp](https://opbagya.github.io/app-reverse-engineer/lootify/)**

* **The Prompt:**
  ```text
  using this skill of app reverse engineer, build me exact copy of spotify but name it "lootify"
  ```
* **What the AI Did Autonomously:**
  1. Found Spotify's official mobile screenshots on the Play Store CDN.
  2. Extracted the obsidian black (`#121212`) and neon green (`#1ed760`) design tokens.
  3. Built a fully interactive dark-mode music player with a left library sidebar, hover-reveal green play buttons, live Web Audio ambient synth sound preview, play queue, and scrubbable progress bar.
* **Code folder:** [`examples/lootify/`](./examples/lootify/)

---

## 🛠️ The 3-Step Magic Under the Hood

```
1. You Type an App Name (e.g. "Spotify")
             │
             ▼
2. AI Hunts the Web Autonomously
   • Pulls full-resolution screenshots from App Store & Play Store CDNs
   • Looks at the screens with multimodal vision (checking whitespace & layouts)
   • Extracts colors, fonts, card styles, and animations into DESIGN_SYSTEM.md
             │
             ▼
3. AI Builds Your Custom Idea
   • Generates 100% complete, working code (Next.js, React, or React Native)
   • Adapts the visual style to your unique product
```

---

## 💬 A Note from the Creator

> *"I'm a beginner builder learning in public and building the tools I personally need and use every day. If you try this skill out, I’d love to hear your thoughts, what worked, what didn't, or what you'd like to see next. Feedback, suggestions, and PRs are always warmly welcome!"*

---

## 📬 Connect & Contact

If you have questions, ideas, or want to collaborate:
* **Email:** [OnkarBagimani@gmail.com](mailto:OnkarBagimani@gmail.com)
* **GitHub:** [@Opbagya](https://github.com/Opbagya)

---

## 📄 License

This project is licensed under the **MIT License** — you are free to use, modify, and distribute it for personal and commercial projects. See the [`LICENSE`](./LICENSE) file for details.
