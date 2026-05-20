---
title: "MONK — Nihon Kohden waveform extraction"
meta_title: "MONK / Nihon Kohden waveform extraction — MESH|Lab"
description: "Open tooling to extract patient-monitoring waveform data from Nihon Kohden bedside hardware into structured, research-ready formats."
status: "active"
themes: ["data-ai"]
lead: "Rafael Palomar"
members: ["Khai Duong"]
partners: []
year_start: 2024
image: "/images/projects/monk.png"
repo: "https://github.com/OUH-MESHLab/MONK-system"
weight: 7
---

**MONK** is the patient-monitoring waveform-extraction system MESH|Lab
maintains for Oslo University Hospital. It bridges Nihon Kohden bedside
monitoring hardware — which records continuous physiological signals
at high time-resolution but in proprietary, opaque formats — with the
open, structured formats clinical research workflows actually need.

The system comprises a [Python library](https://github.com/OUH-MESHLab/MONK-library)
for parsing the underlying binary streams and a
[user-facing tool](https://github.com/OUH-MESHLab/MONK-system)
for clinicians and researchers managing the extraction at scale.
