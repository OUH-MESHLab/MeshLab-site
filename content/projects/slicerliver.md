---
title: "SlicerLiver"
meta_title: "SlicerLiver — MESH|Lab"
description: "A 3D Slicer extension for patient-specific liver-resection planning, from segmentation through vessel analysis to a navigable surgical plan."
status: "active"
themes: ["image-guided-surgery"]
lead: "Rafael Palomar"
members: ["Ruoyan Meng", "Gabriella d'Albenzio"]
partners: []
year_start: 2020
image: "/images/projects/slicerliver.png"
logo: "/images/projects/slicerliver.png"
repo: "https://github.com/ALive-research/Slicer-Liver"
figure: "slicerliver.png"
figure_alt: "A segmented liver with its portal and hepatic vessel trees and two tumours, rendered in 3D Slicer"
figure_credit: "From SlicerLiver's own tutorial material ([ALive-research/Slicer-Liver](https://github.com/ALive-research/Slicer-Liver))."
weight: 2
---

**SlicerLiver** is a 3D Slicer extension for patient-specific liver-
resection planning. It packages the workflow surgeons actually
follow — load the contrast-enhanced CT, segment liver parenchyma and
its vessel trees, identify the lesion, project the cut surface — into
a single, reproducible tool that runs on the same workstation
radiologists already use.

The project sits at the centre of MESH|Lab's surgical-planning work
and connects to the lab's downstream simulation
([SlicerSOFA](/projects/slicersofa/)) pipeline.
