---
layout: page
title: Agentic-DS-Ops
description: Closed-loop operations for ZooKeeper clusters detecting fail-slow overloads with risk-aware mitigations.
importance: 1
category: systems
# github: https://github.com/umich-distsys/agentic-ds-ops
image: /assets/img/project/agentic.png.png
---

<p align="center">
  <img src="{{ '/assets/img/project/agentic.png.png' | relative_url }}" alt="Agentic Distributed System Ops diagram" style="max-width: 780px; width: 100%; border-radius: 12px; box-shadow: 0 6px 20px rgba(0,0,0,0.18);" loading="lazy">
</p>

Built an agentic operations framework for ZooKeeper clusters that identifies fail-slow overloads and applies
mitigations (rate limiting, replica migration) based on runtime risk. Focused on modeling queueing behavior under
contention, tuning mitigation policies to avoid thrashing, and validating recovery speed with fault-injection traces.
