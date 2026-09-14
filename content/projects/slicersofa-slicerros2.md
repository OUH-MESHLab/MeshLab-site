---
title: "SlicerSOFA + SlicerROS2"
meta_title: "SlicerSOFA + SlicerROS2 — MESH|Lab"
description: "Soft-tissue simulation and robotic control wired into 3D Slicer through SOFA and ROS 2, with haptic interaction for surgical research benches."
status: "active"
themes: ["simulation-robotics"]
lead: "Rafael Palomar"
members: ["Eléonore Germond"]
partners: ["Inria"]
year_start: 2023
image: "/images/projects/slicersofa-slicerros2.png"
repo: "https://github.com/OUH-MESHLab/sofa-ros-haptic-demo"
figure: "slicersofa-slicerros2.jpg"
figure_alt: "A liver mesh enclosed in the sparse simulation grid its deformation is solved on"
figure_credit: "A liver enclosed in the sparse grid its deformation is solved on — figure from our SlicerSOFA paper."
weight: 3
---

**SlicerSOFA + SlicerROS2** brings soft-tissue simulation (SOFA) and
robotic control (ROS 2) into 3D Slicer and lets them share a single
scene and coordinate frame. Add a consumer-grade haptic device and the
resulting research bench can replay surgical motion against a deforming
organ model — a capability previously confined to research-grade
hardware costing an order of magnitude more.

The work is split across three repositories under
[OUH-MESHLab/slicer-ros2-demos](https://github.com/OUH-MESHLab/slicer-ros2-demos)
and the [sofa-ros-haptic-demo](https://github.com/OUH-MESHLab/sofa-ros-haptic-demo)
companion, all reproducible from a [SystoleOS](/projects/systoleos/)
manifest.
