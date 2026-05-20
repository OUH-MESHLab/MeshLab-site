# MESH|Lab website — product brief

This file is loaded by the `impeccable` Claude Code skill at the start of any
design work. It also serves as the canonical product brief for the site.

## What this site is

The public website of **MESH|Lab** — the medical-software research group
at Oslo University Hospital. GitHub organisation:
[OUH-MESHLab](https://github.com/OUH-MESHLab).

The site is a single, English-language, statically-rendered Hugo site
deployed to Netlify or Cloudflare Pages. It is read more than it is updated.

## Audience (in priority order)

1. **Prospective collaborators** — clinicians and researchers at other
   hospitals, universities, and standards bodies evaluating MESH|Lab as a
   partner. They are skim-reading; they need to verify track record,
   relevance, and contactability inside 60 seconds.
2. **Funding bodies and grant reviewers** — checking that a small lab has
   the breadth to deliver on a precision-medicine pitch. They want
   recognisable partner logos, named projects, and a credible publications
   track.
3. **Prospective lab members** — MSc/PhD candidates and engineers
   considering a position. They want to know what the lab actually works
   on and whether the culture is interdisciplinary in practice.

The general public is explicitly de-prioritised. The site does not need
plain-English lay summaries on every page; it does need them
*available* (research-theme pages, project summaries) so a clinician
co-author can cite the lab without help.

## Mission and vision

- **Mission**: Accelerate medical innovation through software that makes
  precision care possible.
- **Vision**: Clinicians, researchers and patients connected through our
  software.

Source: 2025-09-09 group presentation (see PKS note `20260520T080122`).
The site should surface both verbatim, in the hero or About page —
they are short enough to function as headlines.

## What MESH|Lab actually does

The lab operates across three layers — **OS / infrastructure / end-user
medical applications** — and frames its work along four research themes:

1. **Systems & infrastructure** — reproducible, regulated operating
   systems and platforms for medical computing (SystoleOS).
2. **Image-guided surgery & navigation** — Slicer-based planning and
   intra-operative guidance (SlicerLiver).
3. **Surgical simulation & robotics** — soft-tissue simulation,
   haptics, ROS-based research benches (SlicerSOFA, SlicerROS2).
4. **Clinical data & AI** — interoperability with bedside devices and
   ML over imaging archives (Nihon-Kohden waveform extraction).

Each project sits under one or more themes via a `themes[]` field.

## Team model

- **Head of the group** — one person, prominent on the Team page.
- **Associate members** — one grid, role chip on each card:
  - *Technical* (engineers / data scientists)
  - *Clinical consultants* — same lab relationship as technical
    associates, framed by clinical specialty for clarity.
- **Visiting researchers & students** — separate row below the
  associate grid; lighter rendering, "from <institution>" subtitle,
  time-bounded.
- **Alumni** — compact list at the bottom; name + period, no modals.

A core-members tier exists conceptually but is not in the schema while
empty. Add `tier: core` later when hires happen.

Individual members do not have dedicated pages. Clicking a card opens
a modal with bio, expertise chips, current projects, and external IDs
(ORCID, GitHub, Scholar).

## Brand voice

- **Plain, declarative, second person sparingly.** No marketing
  superlatives ("cutting-edge", "world-class", "revolutionary"). The
  lab is small and serious; sounding small and serious is honest and
  attractive to the audiences that matter.
- **Specific over general.** "Soft-tissue simulation for liver
  resection planning" beats "advanced surgical AI". Names of partner
  institutions and standards (IEC 62304, ISO 13485, FAIR) beat
  hand-wave compliance claims.
- **English only.** Norwegian-language collaboration partners read
  English fluently. A bilingual site would double the upkeep without
  measurable audience gain.

## Anti-references — what this site must not look like

- **Generic SaaS landing pages.** No purple-to-blue hero gradients, no
  pill-shaped "Get started" CTAs, no Inter-for-everything, no card-in-
  card visuals. The Stanford Computational Imaging lab is a useful
  pole.
- **Alphabetical text-list team pages** (Harvard SPL pattern). Use a
  grid with photo and role chip.
- **Wall-of-BibTeX publications pages with no filtering** (the INRIA /
  TUM default). Provide year and theme filters; surface 5–8 selected
  papers on the home page.
- **Hero carousels of paper figures without narrative.** Static hero
  with one value proposition is stronger than a slider.
- **Institutional template lock-in** (NTNU subpage / SINTEF subpage
  pattern). The lab has dual OUS + NTNU affiliation and a standalone
  identity is the point.

## Inspiration anchors (positive)

- **Stanford Computational Imaging** — typography-first restraint;
  venue-tagged research cards.
- **SINTEF Medical Technology** — Nordic cultural fit; project cards
  with explicit date ranges.
- **NTNU MIRA** — partner-logo strip mirrors MESH|Lab's joint
  OUS/NTNU/St. Olavs/SINTEF/Inria/BWH/NVIDIA story.
- **Perk Lab Queen's** — four research-themes grid; explicit
  current/alumni split.

## Strategic principles

These come from the group's seven strategy pillars and shape what the
site emphasises:

- **Needs-driven research** → project pages frame the clinical problem
  before the technical solution.
- **Interdisciplinary** → team page mixes clinical and technical
  associates side-by-side; project pages list both kinds of contributors.
- **Compliant by design** → an About / methodology paragraph mentions
  the standards (IEC 62304, ISO 13485, GDPR, FAIR) without making the
  whole site about them.
- **Open** → every project that has a public repo links it from its
  project page; the homepage links the OUH-MESHLab GitHub org.

## Out of scope (for v1)

- Lay blog content beyond announcements (`news/`).
- A members-only intranet or paper drafts area.
- Self-service member sign-up; team rosters are maintained by the
  Head.
- Funding lists. Funds being sought are private (see PKS note caveat).
  Awarded grants may appear on relevant project pages.
- Multilingual content.

## Deployment & domain

- Hosting target: Netlify or Cloudflare Pages (TBD).
- Domain: pending. Candidates: `meshlab.no`, `meshlab.ous.no`,
  `meshlab.ntnu.no`. A neutral standalone domain is preferred to
  reinforce the independent-identity point above.
- The site builds with Hugo extended ≥ 0.146 via a `manifest.scm`
  Guix dev shell + `.envrc` (direnv). See repository README for
  onboarding.
