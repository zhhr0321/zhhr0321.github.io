---
layout: page
title: Agentic-DS-Ops
description: Closed-loop operations for ZooKeeper clusters detecting fail-slow overloads with risk-aware mitigations.
importance: 1
category: systems
github: https://github.com/umich-distsys/agentic-ds-ops
---

Built an agentic operations framework for ZooKeeper clusters that identifies fail-slow overloads and applies
mitigations (rate limiting, replica migration) based on runtime risk. Focused on modeling queueing behavior under
contention, tuning mitigation policies to avoid thrashing, and validating recovery speed with fault-injection traces.
