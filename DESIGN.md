# MESH|Lab website — design tokens

This file is loaded by the `impeccable` Claude Code skill alongside
`PRODUCT.md` at the start of any design work. It is also the canonical
source for Tailwind theme variables — when these tokens change, update
`assets/css/theme.css` (or wherever Hugoplate's Tailwind `@theme` block
lives) to match.

## Direction

Typography-first, restrained. A single warm accent family (pale honey ⇄
deep amber) carries every accent surface so the page reads as one
coherent system rather than a palette grab-bag. Reference vibe: Stanford
Computational Imaging crossed with SINTEF Medical Technology.

## Colour tokens

All values are sRGB hex. The accent family stays inside one hue (warm
amber, ~30° hue) at multiple lightness/saturation points so backgrounds
can be pale without compromising text contrast.

### Surfaces (warm off-whites)

| Token              | Hex      | Use                                              |
|--------------------|----------|--------------------------------------------------|
| `canvas`           | `#FBFAF6` | Page background. Off-white with a 1.5 % warm shift |
| `surface`          | `#FFFFFF` | Cards, modals, raised regions over canvas         |
| `surface-warm`     | `#F5F1E8` | Hero / feature sections wanting subtle warmth     |

### Ink (warm near-blacks)

| Token            | Hex      | Use                                       |
|------------------|----------|-------------------------------------------|
| `ink`            | `#1A1A18` | Body copy, headlines                       |
| `ink-muted`      | `#5E5C56` | Meta text, captions, labels                |
| `ink-subtle`     | `#8A8780` | Placeholder, disabled, very-secondary text |

### Accent family (warm amber, ~30°)

| Token              | Hex      | Use                                                   |
|--------------------|----------|-------------------------------------------------------|
| `accent`           | `#B85C00` | Link text, primary CTA text, focus indicator stroke    |
| `accent-hover`     | `#8F4700` | Link hover, pressed state                              |
| `accent-tint`      | `#F8DCA8` | Chip/badge backgrounds, inline highlight, divider bars |
| `accent-tint-soft` | `#FDF1DA` | Hero backdrop, feature-section wash, callout boxes     |
| `accent-stroke`    | `#E8B86B` | Underlines, focus rings (outline), decorative rules    |

**Why pale-as-background, dark-as-text.** A pale yellow/orange used for
*text* fails WCAG AA on white. By restricting the pale tints to
background surfaces (where contrast doesn't constrain) and using the
deep amber (`#B85C00`, ratio ≈ 6.3 : 1 on `canvas`) for interactive text,
the *feel* of the site is warm-amber while every interactive element
stays legible.

### Border / divider

| Token              | Hex      | Use                                              |
|--------------------|----------|--------------------------------------------------|
| `border`           | `#E8E4DA` | Default card/divider stroke                       |
| `border-strong`    | `#C8C3B6` | Emphasised divider (e.g. footer top border)       |

### Status / utility (use sparingly — almost never on this site)

| Token       | Hex      | Use                  |
|-------------|----------|----------------------|
| `danger`    | `#C73E1D` | Form errors only      |
| `success`   | `#5C8F4D` | Confirmation states   |
| `info`      | `#3A6080` | Neutral notices       |

## Typography

### Families

| Token              | Family                          | Use                                       |
|--------------------|---------------------------------|-------------------------------------------|
| `font-display`     | "Dosis", sans-serif             | Wordmark, hero, h1–h2, partner-strip headings |
| `font-body`        | "Roboto", system-ui, sans-serif | Body copy, h3–h6, navigation, captions     |
| `font-mono`        | ui-monospace, "JetBrains Mono", monospace | Code blocks, citations, file paths |

Both Dosis and Roboto are self-hosted via WOFF2 in `static/fonts/`.
The Roboto bundle from `~/Nextcloud/Work/MESHLab/Design/roboto.zip`
provides the source TTFs; convert to WOFF2 once and ship `Regular`,
`Italic`, `Medium`, `Bold`. Dosis ships `Regular` and `SemiBold` only
(it's a display face — body weights are unnecessary).

### Scale (modular, ratio 1.25 / major-third)

| Token            | Size     | Px (16-base) | Use                              |
|------------------|----------|--------------|----------------------------------|
| `text-display-1` | 3.815rem | 61           | Hero headline                     |
| `text-display-2` | 3.052rem | 49           | Page-title hero (About, Team…)    |
| `text-h1`        | 2.441rem | 39           | Section heading                   |
| `text-h2`        | 1.953rem | 31           | Sub-section heading                |
| `text-h3`        | 1.563rem | 25           | Card title                         |
| `text-h4`        | 1.250rem | 20           | Small block heading                |
| `text-body-lg`   | 1.125rem | 18           | Paragraph lead                     |
| `text-body`      | 1.000rem | 16           | Base body                          |
| `text-body-sm`   | 0.875rem | 14           | Meta, caption                      |
| `text-micro`     | 0.750rem | 12           | Chip, tag, footnote                |

### Weight / leading

- Body line-height: `1.55` (long-form readable).
- Display line-height: `1.15` (tight, allows the wordmark to crop close).
- Display weight: SemiBold (600). Avoid Light — the wordmark is the
  reference style.
- Body weight: Regular (400) for paragraphs, Medium (500) for nav and
  card titles, Bold (700) only for inline emphasis (`<strong>`).

## Spacing

Tailwind-default 4 px base. Tokens we explicitly reference in copy:

| Token | rem | Use                                          |
|-------|-----|----------------------------------------------|
| `1`   | 0.25 | Inline chip padding-y                         |
| `2`   | 0.50 | Inline chip padding-x, small gaps             |
| `3`   | 0.75 | Form field inner spacing                      |
| `4`   | 1.00 | Card padding-y, paragraph spacing             |
| `6`   | 1.50 | Card padding-x, between-paragraph spacing     |
| `8`   | 2.00 | Section inner padding                         |
| `12`  | 3.00 | Section margin                                |
| `16`  | 4.00 | Hero padding-y                                |
| `24`  | 6.00 | Between major page regions                    |

## Radius

| Token        | Value     | Use                          |
|--------------|-----------|------------------------------|
| `radius-sm`  | 0.25rem   | Chips, badges, role tags      |
| `radius-md`  | 0.5rem    | Cards (team, project, pub)    |
| `radius-lg`  | 0.75rem   | Modal, hero feature box       |
| `radius-full`| 9999px    | Pill nav, avatar, CTA chip    |

Default UI radius is `radius-md`. Hard corners (no radius) are reserved
for the wordmark and partner-logo strip — to read as *editorial* not
*app-like*.

## Elevation

Near-flat. Shadows exist only where depth communicates affordance.

| Token        | Value                                     | Use                |
|--------------|-------------------------------------------|--------------------|
| `shadow-sm`  | `0 1px 2px rgb(0 0 0 / 0.04)`             | Card hover         |
| `shadow-md`  | `0 4px 12px rgb(0 0 0 / 0.06)`            | Modal              |
| `shadow-lg`  | `0 16px 32px rgb(0 0 0 / 0.08)`           | Floating menus     |

No inset shadows. No coloured shadows.

## Breakpoints

Tailwind defaults. The site is read on laptops first, phone second.

| Token | Min-width |
|-------|-----------|
| `sm`  | 640 px    |
| `md`  | 768 px    |
| `lg`  | 1024 px   |
| `xl`  | 1280 px   |
| `2xl` | 1536 px   |

## Components — defaults

These are the visual rules to follow when impeccable's `craft` /
`polish` / `audit` commands run.

### Chips / role tags

`bg-accent-tint text-ink rounded-sm px-2 py-1 text-micro font-medium`.
Used for: role chips on team cards (Technical / Clinical /
Visiting), theme tags on projects and publications, venue badges on
selected publications.

### Cards (team, project, publication)

- Background `surface`, border `border`, radius `radius-md`.
- Hover: lift via `shadow-sm`, **no transform**.
- Photo (team) or thumbnail (project): aspect 4:5 portrait for people,
  16:10 landscape for projects.
- Internal padding: `p-6`. External grid gap: `gap-6`.
- Chip row above title; title in `font-display` SemiBold `text-h4`;
  meta in `font-body` Regular `text-body-sm` `text-ink-muted`.

### Team modal

- Triggered by card click. `radius-lg`, `shadow-md`, max-width 640 px.
- Top: name in `text-h2`, role chip, affiliations.
- Middle: bio_long, expertise chip row.
- Bottom: "Current projects" list (linked) + external IDs (ORCID,
  GitHub, Scholar) as text links, not icons-only.
- Modal close on ESC, outside-click, and a dedicated close button.

### Partner-logo strip

- Single row, monochrome (logos converted to currentColor SVG where
  possible, otherwise grayscale + `opacity: 0.7` rest, `1.0` hover).
- No background; sits between `surface-warm` sections.
- Layout: `justify-between` with even spacing on `md+`; horizontal
  scroll on `sm`.

### Buttons / CTAs

- Primary: `bg-accent text-canvas radius-full px-6 py-3 font-medium`.
  One per viewport area maximum.
- Secondary: text-only with `accent-stroke` underline-offset 4 px.
- No box-shadow on rest. Hover: underline thickness up by 1 px.
- No floating "Back to top" button or chat bubble.

## What this site does NOT use (token-level anti-patterns)

- **Purple, magenta, or cool-blue gradients.** The brand is warm-amber.
  Any gradient that needs to be used (e.g., subtle hero backdrop) lives
  within `accent-tint-soft` ↔ `canvas`.
- **Cool-grey neutrals** (`#A0A0A0`, `slate-400`). Use the warm-grey
  scale (`ink-muted`, `border`) so the page feels editorial, not OS-like.
- **Drop shadows on text.** Headlines stand alone.
- **Icon-tiles above every heading** (rounded square with gradient).
  Headings are headings.
- **More than three font weights per page.** Regular, Medium, SemiBold.
  Italic for emphasis. Light is banned (it's the AI-generic-design
  giveaway).
