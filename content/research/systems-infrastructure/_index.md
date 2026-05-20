---
title: "Systems & infrastructure"
meta_title: "Systems & infrastructure — MESH|Lab research"
description: "Reproducible, regulated operating systems and platforms for medical computing."
weight: 1
theme_slug: "systems-infrastructure"
---

Medical software does not run on the same kind of machines as
consumer software. It runs on devices that must reproduce a known
configuration months or years after first installation, on operating
systems that auditors can inspect, and on platforms that can survive
a hospital IT refresh cycle without losing certification.

This theme covers the **foundational layer** of MESH|Lab's stack:
operating systems, image-distribution and visualisation
infrastructure, and the build / deploy machinery that lets the rest
of our work reach the clinic.

## What we build

- **Operating systems for medical applications**, designed to be
  reproducible, declaratively configured, and amenable to the
  regulatory documentation medical software demands.
- **Internal platforms** that take research outputs — image volumes,
  segmentations, patient-monitoring streams — and surface them where
  clinicians and engineers can review and discuss them.
- **The shared tooling** that lets project teams ship faster without
  cutting corners on validation.

## Why it matters

Most clinical-software research stops at the prototype. The
infrastructure to harden, document, and deploy that prototype is the
gap between a paper and a tool a hospital uses. We invest in that
infrastructure deliberately so the upper layers of our stack — the
surgical-planning tools, the simulation environments, the AI models —
can actually reach patients.

## Related projects

See the [Projects](/projects/?theme=systems-infrastructure) page for
the current portfolio under this theme.
