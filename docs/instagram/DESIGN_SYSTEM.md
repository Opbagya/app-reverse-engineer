# Instagram Mobile Design System (Reverse-Engineered)

This design system decodes the exact visual tokens, component anatomy, layout hierarchy, and micro-interactions of Instagram's mobile iOS & Android application.

---

## 1. Visual Theme & Color Architecture

| Token Name | Hex Code | Visual Role |
| :--- | :--- | :--- |
| `--ig-primary-bg` | `#ffffff` (Dark: `#000000`) | Main canvas background |
| `--ig-surface` | `#ffffff` (Dark: `#121212`) | Elevated cards & story viewer |
| `--ig-border` | `#dbdbdb` (Dark: `#262626`) | 1px hairline divider strokes |
| `--ig-text-primary`| `#262626` (Dark: `#f5f5f5`) | Usernames, post captions, titles |
| `--ig-text-secondary`|`#8e8e8e` (Dark: `#a8a8a8`) | Timestamps, like subtitles |
| `--ig-like-red` | `#ed4956` | Active heart like fill & animation |
| `--ig-verified-blue`|`#0095f6` | Verified account badge, follow buttons |
| `--ig-story-gradient`| `linear-gradient(45deg, #f09433, #e6683c, #dc2743, #cc2366, #bc1888)` | Unseen story ring indicator |

---

## 2. Component & Layout Anatomy

1. **Header**:
   - Signature handwritten logotype wordmark.
   - Action icons: Heart (Notifications with badge), Messenger (Paper Plane with unread badge counter).
2. **Stories Carousel**:
   - 64px circular avatar with 2.5px gradient ring border and 2px white gap.
   - "Your story" with a blue `+` circle badge.
3. **Feed Post**:
   - Header: 36px avatar with story ring, username in bold, audio tag, 3-dots option menu.
   - Media: Edge-to-edge 1:1 or 4:5 image container with double-tap heart pop gesture.
   - Action Bar: Like, Comment, Share, Bookmark with spring micro-motion.
   - Metadata: "Liked by X and Y others", bold username caption, expandable "... more", comment count, relative timestamp.
4. **Bottom Mobile Dock**:
   - 5 icons: Home, Explore, Create (+), Reels, Profile.
   - 48px fixed height with 0.5px subtle border stroke.
