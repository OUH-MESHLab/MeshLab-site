---
title: "SlicerSOFA"
meta_title: "SlicerSOFA — MESH|Lab"
description: "Real-time soft-tissue simulation inside 3D Slicer, built on the SOFA framework — with a SlicerROS2 bridge that lets a simulated organ drive, and be driven by, robotic and haptic hardware."
status: "active"
themes: ["simulation-robotics"]
lead: "Rafael Palomar"
members: ["Eléonore Germond"]
partners: ["Inria"]
year_start: 2023
repo: "https://github.com/Slicer/SlicerSOFA"
figure: "slicersofa.jpg"
figure_alt: "A liver mesh enclosed in the sparse simulation grid its deformation is solved on"
figure_credit: "A liver enclosed in the sparse grid its deformation is solved on — figure from our SlicerSOFA paper."
aliases:
  - /projects/slicersofa-slicerros2/
weight: 3
---

Planning software that treats anatomy as rigid stops being useful the moment a
surgeon touches it. **SlicerSOFA** closes that gap by bringing
[SOFA](https://www.sofa-framework.org/) — a framework for real-time, interactive
biomechanical simulation — into 3D Slicer, so segmented anatomy in a Slicer scene
can deform, be probed, and respond to forces rather than sitting still.

It lives in the upstream `Slicer` organisation rather than ours: simulation
belongs to the platform, not to one lab. Development is done with Inria, the
group behind SOFA itself.

## Components

**The simulation core** wires SOFA's solvers to Slicer's scene: a segmented
organ becomes a simulable mesh, with the grid, material parameters and boundary
conditions expressed as scene nodes so a simulation is set up the way the rest of
a Slicer workflow is.

**The SlicerROS2 bridge** is what makes the simulation talk to hardware. Through
[SlicerROS2](https://github.com/rosmed/slicer_ros2_module), a Slicer scene can exchange
transforms and messages with ROS 2, so a robot or a haptic device can be driven
against the deforming model on a research bench. With a consumer-grade haptic
device, the resulting research bench replays surgical motion against a deforming
organ — a capability previously confined to research-grade hardware costing an
order of magnitude more.

The robotic and haptic demonstrations live in
[slicer-ros2-demos](https://github.com/OUH-MESHLab/slicer-ros2-demos) and
[sofa-ros-haptic-demo](https://github.com/OUH-MESHLab/sofa-ros-haptic-demo), all
reproducible from a [SystoleOS](/projects/systoleos/) manifest.
