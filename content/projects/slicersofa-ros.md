---
title: "SlicerSOFA + ROS"
meta_title: "SlicerSOFA + ROS — MESH|Lab"
description: "Soft-tissue simulation and robotic control wired into 3D Slicer through SOFA and ROS 2, with haptic interaction for surgical research benches."
status: "active"
themes: ["simulation-robotics"]
lead: "Rafael Palomar"
members: ["Eléonore Dufresne"]
partners: ["Inria"]
year_start: 2023
image: "/images/projects/slicersofa-ros.png"
repo: "https://github.com/OUH-MESHLab/sofa-ros-haptic-demo"
weight: 3
---

**SlicerSOFA + ROS** brings soft-tissue simulation (SOFA) and robotic
control (ROS 2) into 3D Slicer and lets them share a single scene and
coordinate frame. Add a consumer-grade haptic device and the resulting
research bench can replay surgical motion against a deforming organ
model — a capability previously confined to research-grade hardware
costing an order of magnitude more.

The work is split across three repositories under
[OUH-MESHLab/slicer-ros2-demos](https://github.com/OUH-MESHLab/slicer-ros2-demos)
and the [sofa-ros-haptic-demo](https://github.com/OUH-MESHLab/sofa-ros-haptic-demo)
companion, all reproducible from a [SystoleOS](/projects/systoleos/)
manifest.
