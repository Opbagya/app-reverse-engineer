# Demonstration: "Sahara" (E-Commerce Platform)

This demonstration shows how **`app-reverse-engineer`** turned a single one-sentence prompt into a complete, high-fidelity e-commerce web application.

---

### The Prompt Used
```text
using this skill of app reverse engineer, build me exact copy of amazon but name it "sahara"
```

---

### What the Skill Executed Autonomously (Zero-Upload)

1. **Autonomous Screenshot Discovery**:
   - Pulled high-resolution mobile & web screenshots directly from public App Store CDNs.
   - Visually inspected real optical whitespace, omnibox sizing, pill badges, and 4-quadrant bento cards with multimodal vision.

2. **Design Token Synthesis**:
   - Generated [`DESIGN_SYSTEM.md`](./DESIGN_SYSTEM.md) detailing exact hex colors (`#131921` Navy, `#232f3e` Slate Subnav, `#febd69` Gold, `#eaeded` Canvas, `#cc0c39` Deal Red).
   - Captured the signature bottom-fade gradient mask and superscripted pricing typography.

3. **Production Implementation**:
   - Built [`index.html`](./index.html) featuring:
     - 🏜️ Custom SVG **sahara** logo with the iconic curved smile swoosh arrow.
     - 🔍 Omnibox search with category select, live autocomplete, and real catalog filtering.
     - 📍 Delivery location selector modal with ZIP code update.
     - 🎠 Rotating Hero Banner carousel with fade masks.
     - 🧱 4-Quadrant Category cards ("Gaming Accessories", "Refresh your space", "Artisan Home").
     - 🏷️ Horizontal "Today's Deals" scroll carousel with a live countdown timer.
     - 🛒 Slide-over Shopping Cart with badge counters, quantity toggles, and subtotal calculation.
     - 🤖 **Dune AI Assistant** (Inspired by Amazon's Rufus AI) offering conversational product recommendations.

---

### How to Run This Example
```bash
# Simply open in any browser
open index.html

# Or serve locally
npx serve -l 3000 .
```
