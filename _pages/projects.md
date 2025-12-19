---
layout: page
title: projects
permalink: /projects/
description: Systems and ML infrastructure work.
nav: true
nav_order: 2
horizontal: false
---

<style>
  .project-img {
    max-width: 480px;
    width: 100%;
    display: block;
    margin: 8px auto 16px;
    border-radius: 12px;
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
  }
</style>

## Projects

### Agentic-DS-Ops {#agentic-ds-ops}
**MAY 2025 – PRESENT** · Distributed Systems Project · Order Lab, Ann Arbor, MI  

<img class="project-img" src="{{ '/assets/img/project/agentic.png.png' | relative_url }}" alt="Agentic Distributed System Ops diagram" loading="lazy">

- Built an agent-based autonomous mitigation system for distributed failures like overload and network faults on ZooKeeper clusters; experimented with a custom overload benchmark in Go.
- Integrated Prometheus metrics with sliding windows plus JMX-exporter logs to detect trends and surface failures.
- Designed a risk-aware mitigation framework where the agent selects actions via HAProxy/Resilience4j based on symptom severity; reduced tail latency in overload cases by over 50%.
- Applied pre- and post-evaluators to predict and verify outcomes against SLOs/throughput before declaring success.

---

### CUDA Graphs for Reducing Kernel Launch Overhead {#cuda-graph-runtime}
**SEPT. 2025 – PRESENT** · MLSys Research Project · Ann Arbor, MI  

<img class="project-img" src="{{ '/assets/img/project/cuda-proxy.png' | relative_url }}" alt="CUDA Graph Runtime diagram" loading="lazy">

- Built a hybrid runtime proxy reducing kernel-launch overhead and cutting tail latency for large recommendation and MoE inference systems.
- Applied CUDA Graphs for stable, high-arithmetic compute (MLP blocks/attention) and a persistent kernel consuming device-queue tasks for irregular micro-ops (pack/scatter/routing).
- Used bucketing and static pools to capture several robust graphs, achieving over 50% higher replay hit rate.
- Designed microbenchmarks to isolate persistent-kernel overhead, measuring interference with concurrent graph replay and fixing scheduling costs that dominated small glue segments.
- [Project report (PDF)]({{ '/assets/img/project/CUDAproxy_rpt.pdf' | relative_url }})

---

### COCONUT Replication {#coconut-replication}
**Course project** · GSM8k / ProsQA  

- Replicating and extending the COCONUT latent-reasoning framework to study token efficiency vs. accuracy and hallucination trade-offs.
