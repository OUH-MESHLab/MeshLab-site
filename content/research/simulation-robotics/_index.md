---
title: "Surgical simulation & robotics"
meta_title: "Surgical simulation & robotics — MESH|Lab research"
description: "Soft-tissue simulation, haptic interaction, and ROS-based research benches for surgical robotics."
weight: 3
theme_slug: "simulation-robotics"
---

Simulating soft tissue in real time, under a surgeon's hand, with
physics that feels correct — and then connecting that simulation to a
robotic manipulator that can replay or assist a procedure — is one
of the hardest standing problems in surgical computing.

This theme covers MESH|Lab's work on **soft-tissue simulation**,
**haptic interaction**, and **ROS-based research benches** that bring
those simulations together with real robots for surgical training and
investigation.

## What we build

- **Slicer ↔ SOFA integrations** that bring deformable-tissue
  simulation directly into the planning environment surgeons already
  use.
- **Research benches that reach robot hardware** through the existing
  [SlicerROS2](https://github.com/rosmed/slicer_ros2_module) bridge —
  we build what runs on top of it, not the bridge itself.
- **Haptic-feedback demonstrators** that combine the above with
  consumer-grade haptic devices to make organ-deformation behaviour
  available to clinical researchers without the cost of a research-
  grade rig.

## Why it matters

A surgical robot that does not know what it is touching cannot be
trusted with autonomy. A simulation that does not connect to a robot
cannot be evaluated against real motion. Both halves are necessary
for the next generation of computer-assisted procedures, and both
benefit from being open enough to compare across labs.

## Related projects

See the [Projects](/projects/?theme=simulation-robotics) page for
the current portfolio under this theme.
