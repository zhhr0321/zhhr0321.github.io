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
  .project-card img.featured-thumb {
    max-height: 220px;
    object-fit: cover;
    border-bottom: 1px solid var(--global-border-color, #e5e5e5);
  }
</style>

## Featured

<div class="row row-cols-1 row-cols-lg-2 g-4 mb-5">
  <div class="col">
    <div class="card h-100 shadow-sm project-card border-0">
      <img class="card-img-top featured-thumb" src="{{ '/assets/img/project/agentic.png.png' | relative_url }}" alt="Agentic Distributed System Ops diagram" loading="lazy">
      <div class="card-body">
        <h3 class="card-title">Agentic Distributed System Ops</h3>
        <p class="card-text">
          Agent-based auto-mitigation loop (reproduce → measure → decide → mitigate) on ZooKeeper; combines chaos-injection, HAProxy/Resilience4j mitigations, and Prometheus/JMX observability to handle overload and network faults.
        </p>
        <a class="btn btn-outline-primary" href="{{ '/projects/agentic-ds-ops' | relative_url }}">Details</a>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100 shadow-sm project-card border-0">
      <img class="card-img-top featured-thumb" src="{{ '/assets/img/project/cuda-proxy.png' | relative_url }}" alt="CUDA Graph Runtime diagram" loading="lazy">
      <div class="card-body">
        <h3 class="card-title">CUDA Graph Runtime</h3>
        <p class="card-text">
          Hybrid CUDA runtime combining CUDA Graphs with persistent kernels to cut launch overheads and smooth tail latency on bursty MoE-style inference while keeping routing flexible.
        </p>
        <a class="btn btn-outline-primary" href="{{ '/assets/img/project/CUDAproxy_rpt.pdf' | relative_url }}">Project PDF</a>
      </div>
    </div>
  </div>
</div>

## More projects

<div class="card shadow-sm border-0 mb-3">
  <div class="card-body">
    <h4 class="card-title mb-2">COCONUT Replication</h4>
    <p class="card-text">
      Replicating and extending the COCONUT latent-reasoning framework on GSM8k/ProsQA to study token efficiency vs. accuracy and hallucination trade-offs.
    </p>
    <a class="btn btn-outline-primary btn-sm" href="{{ '/projects/coconut-replication' | relative_url }}">Details</a>
  </div>
</div>
