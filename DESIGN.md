---
name: ALX Data Portfolio Hub
description: A focused editorial library for practical data project briefs.
colors:
  deep-field-navy: "#07194f"
  midnight-navy: "#041038"
  action-blue: "#1456f0"
  action-blue-dark: "#0b3dbb"
  progress-green: "#07985c"
  signal-lime: "#c9ec72"
  warm-paper: "#f6f5ef"
  reading-surface: "#fcfbf7"
  ink: "#111a2f"
  muted-ink: "#5b6272"
  hairline: "#d9d9d1"
typography:
  display:
    fontFamily: "Geist, Helvetica Neue, Arial, sans-serif"
    fontSize: "clamp(3.4rem, 7vw, 6.65rem)"
    fontWeight: 720
    lineHeight: 0.92
    letterSpacing: "-0.072em"
  headline:
    fontFamily: "Geist, Helvetica Neue, Arial, sans-serif"
    fontSize: "clamp(2.35rem, 5vw, 4.25rem)"
    fontWeight: 710
    lineHeight: 0.98
    letterSpacing: "-0.06em"
  body:
    fontFamily: "Geist, Helvetica Neue, Arial, sans-serif"
    fontSize: "1rem"
    fontWeight: 400
    lineHeight: 1.65
  label:
    fontFamily: "Geist, Helvetica Neue, Arial, sans-serif"
    fontSize: "0.72rem"
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: "0.08em"
rounded:
  square: "0px"
spacing:
  xs: "8px"
  sm: "16px"
  md: "24px"
  lg: "32px"
  xl: "64px"
components:
  button-primary:
    backgroundColor: "{colors.signal-lime}"
    textColor: "{colors.midnight-navy}"
    typography: "{typography.label}"
    rounded: "{rounded.square}"
    padding: "0 20px"
    height: "48px"
  input-search:
    backgroundColor: "{colors.reading-surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.square}"
    padding: "0 23px"
    height: "70px"
  skill-tag:
    backgroundColor: "{colors.warm-paper}"
    textColor: "{colors.muted-ink}"
    typography: "{typography.label}"
    rounded: "{rounded.square}"
    padding: "5px 8px"
---

# Design System: ALX Data Portfolio Hub

## Overview

**Creative North Star: "The Working Field Guide"**

The interface should feel like a credible collection of briefs learners can use, annotate, and act on. It is editorial and purposeful: large, confident headings establish direction; generous reading space supports concentration; compact metadata helps learners scan without turning the site into a dashboard.

The system rejects generic SaaS landing-page clichés, gamified LMS patterns, dense dashboards, ornamental cards, and decorative gradients. Pages should remain quiet enough for project content to carry the experience.

**Key Characteristics:**

- Strong editorial typography with clear shifts in scale
- Square geometry, restrained lines, and generous whitespace
- ALX colour used for orientation, action, and status—not decoration
- Mobile layouts that preserve the hierarchy rather than merely shrink it

## Colors

The palette pairs a deep institutional navy with a warm reading surface and a small set of high-signal accents.

- **Deep Field Navy** (`#07194f`) anchors heroes and major orientation surfaces.
- **Midnight Navy** (`#041038`) is reserved for the footer and deepest contrast.
- **Action Blue** (`#1456f0`) identifies links, focus, and active navigation.
- **Progress Green** (`#07985c`) communicates constructive status such as beginner-level work.
- **Signal Lime** (`#c9ec72`) highlights the primary action and short labels on navy.
- **Warm Paper** (`#f6f5ef`) is the main canvas; **Reading Surface** (`#fcfbf7`) separates working controls and rows.
- **Ink**, **Muted Ink**, and **Hairline** provide the text and rule hierarchy.

**The Signal Color Rule.** Lime, blue, and green must carry meaning. Do not use them as scattered decoration.

## Typography

Geist is the sole interface family. Display headings are deliberately tight and oversized; body copy remains neutral, open, and easy to read. Uppercase labels use small sizes and wide tracking for metadata—not paragraphs.

**The Two-Speed Rule.** Use dramatic scale for orientation and calm, consistent rhythm for project instructions.

## Elevation

The system is predominantly flat. Separation comes from colour fields, rules, and spacing. The rotated project-brief specimen is the one intentional exception, using a hard blue offset shadow to feel like a physical sheet pinned over the navy field.

**The One Shadow Rule.** Do not add ambient card shadows. Reserve the hard offset shadow for a single featured editorial object.

## Components

- **Site header:** warm surface, square ALX mark, compact navigation, one-pixel divider.
- **Primary action:** signal-lime rectangle on navy with a small arrow; it lifts by two pixels on hover.
- **Filter bar:** one joined horizontal instrument on desktop and a stacked control group on mobile.
- **Project row:** a numbered editorial list item with a clear title, one summary, restrained skill tags, and metadata aligned opposite the content.
- **Project brief:** a navy orientation header followed by a maximum 760px reading column and a sticky skills rail on larger screens.
- **Project commitment:** a signal-lime action beside the project facts that reveals a compact inline form; successful commitment becomes a quiet confirmed state in the same place.
- **Tables and code:** practical document elements with horizontal overflow on small screens and strong header contrast.

**The Brief-First Rule.** Components should help someone choose or complete a project; avoid UI that exists only to make the product feel busier.

## Do's and Don'ts

**Do:**

- Use whitespace and type scale before adding containers.
- Keep project copy readable in a narrow central column.
- Use straight rules and square geometry consistently.
- Make focus states obvious and preserve accessible contrast.
- Let filters and metadata remain compact and secondary to project titles.

**Don't:**

- Don't introduce generic SaaS landing-page clichés or dense dashboard layouts.
- Don't turn projects into a grid of identical ornamental cards.
- Don't use gamified LMS devices such as streaks, badges, or completion theatre.
- Don't add decorative gradients, glass effects, or rounded pills without a functional reason.
- Don't place long instructional content in wide, edge-to-edge columns.
