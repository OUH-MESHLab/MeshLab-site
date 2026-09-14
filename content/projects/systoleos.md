---
title: "SystoleOS"
meta_title: "SystoleOS — MESH|Lab"
description: "A reproducible, declaratively-configured operating system for medical applications, designed to meet the documentation and traceability requirements of medical-software standards."
status: "active"
themes: ["systems-infrastructure"]
lead: "Rafael Palomar"
members: ["Khai Duong", "Omar"]
partners: []
year_start: 2023
image: "/images/projects/systoleos.png"
logo: "/images/projects/systoleos.png"
repo: "https://github.com/SystoleOS"
figure: "systoleos.png"
figure_alt: "The SystoleOS wordmark"
# A mark rather than evidence: an operating system has nothing to screenshot
# until one is booted. Replace with a desktop capture when convenient.
figure_credit: "SystoleOS."
weight: 1
---

**SystoleOS** is the operating system MESH|Lab maintains for medical
applications. It is a Guix-based, declaratively-configured Linux
system designed around three constraints regular distributions handle
poorly: **reproducibility** of a build months or years after first
deployment, **traceability** from binary back to source for every
component, and **certifiability** under the documentation regime
medical-software regulators require.

We use SystoleOS as the substrate underneath the lab's other
projects — including the
[SlicerSOFA](/projects/slicersofa/) simulation
benches — and increasingly with external partners deploying clinical
research workstations.

Project home: [systoleos.org](https://systoleos.org) — source under
[github.com/SystoleOS](https://github.com/SystoleOS).
