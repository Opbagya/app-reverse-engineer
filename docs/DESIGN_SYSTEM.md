# Sahara Design System (Reverse-Engineered from Amazon)

This design system decodes the exact visual tokens, component anatomy, layout hierarchy, and micro-interactions of Amazon's modern web and mobile applications, adapted for **Sahara**.

---

## 1. Visual Theme & Color Architecture

| Token Name | Hex Code | Visual Role |
| :--- | :--- | :--- |
| `--sahara-dark-navy` | `#131921` | Primary Desktop Navigation Bar |
| `--sahara-slate-subnav` | `#232f3e` | Secondary Subnav & Mega Menu Bar |
| `--sahara-gold-accent` | `#febd69` | Primary Search Button, Accent Badges |
| `--sahara-gold-hover` | `#f3a847` | Search Button Active / Hover state |
| `--sahara-orange-cta` | `#f08804` | "Add to Cart" & "Buy Now" Primary CTA |
| `--sahara-orange-vibrant`| `#ff6f00` | Mobile App Header Gradient (`#ff6f00` to `#ff8f00`) |
| `--sahara-canvas` | `#eaeded` | Signature Amazon light-grey content canvas |
| `--sahara-surface` | `#ffffff` | Clean white card container |
| `--sahara-deal-red` | `#cc0c39` | "Limited Time Deal" badge background |
| `--sahara-prime-blue` | `#007185` | Hyperlinks, "See more" text, in-stock badges |
| `--sahara-prime-badge`| `#00a8e1` | Prime / Sahara Express badge accent |
| `--sahara-star-gold` | `#ffa41c` | Product star rating fill |

---

## 2. Typography & Spatial Density

- **Font Family**: Amazon Ember equivalent -> `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif`
- **Pricing Typography**:
  - Currency symbol & cents: Superscripted `0.75em` (`font-size: 13px; vertical-align: super; font-weight: 500;`)
  - Dollar amount: Bold Display (`font-size: 28px; font-weight: 700; line-height: 1;`)
- **Card Spacing & Padding**:
  - Quadrant cards: `p-5` with `gap-3.5` between quadrant items.
  - Image tiles: Crisp white backgrounds, `aspect-square`, high-fidelity product silhouettes with neutral dropshadows.

---

## 3. Signature Component Anatomy

1. **Header & Search Bar**:
   - Location delivery pill on left: `"Deliver to Guest"` + pin icon.
   - Omnibox Search: Rounded corners (`rounded` on desktop, `rounded-full` on mobile), category selector dropdown, input field, and high-visibility gold magnifying glass button.
   - Cart with Badge Counter: Interactive shopping cart icon with numeric badge counter.
2. **Hero Carousel**:
   - Sweeping horizontal promotional banners with soft bottom gradient fade (`linear-gradient(to bottom, rgba(234, 237, 237, 0) 60%, #eaeded 100%)`) seamlessly bleeding into the product cards.
3. **Card Grids (Bento / 4-Quadrant)**:
   - 4-quadrant product categories: 4 product images with sub-labels ("Headphones", "Keyboards", "Mice", "Chairs") and a bottom text link `"See more"`.
4. **Horizontal Deals Carousel**:
   - Deal badge (`25% off`, `Limited time deal`), strikethrough list price, and one-click quick add.
5. **Dune AI Assistant (Inspired by Amazon Rufus AI)**:
   - Interactive shopping assistant popup in bottom-right corner offering conversational product recommendations.
