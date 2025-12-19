---
layout: page
title: projects
permalink: /projects/
description: Systems and ML infrastructure work.
nav: true
nav_order: 2
horizontal: false
---

## Featured

<div class="featured-projects mb-5">
  <div class="row gy-4">
    <div class="col-12 col-lg-6">
      <div class="card shadow-sm h-100 border-0">
        <img class="card-img-top" src="{{ '/assets/img/project/agentic.png.png' | relative_url }}" alt="Agentic Distributed System Ops diagram">
        <div class="card-body">
          <h3 class="card-title">Agentic Distributed System Ops</h3>
          <p class="card-text">
            Agent-based auto-mitigation loop (reproduce → measure → decide → mitigate) on ZooKeeper. Automatic mitigation
            to common distributed-systems failures like overload and network fluctuations.
          </p>
          <a class="btn btn-primary" href="{{ '/projects/agentic-ds-ops' | relative_url }}">Learn more</a>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-6">
      <div class="card shadow-sm h-100 border-0">
        <img class="card-img-top" src="{{ '/assets/img/project/cuda-proxy.png' | relative_url }}" alt="CUDA Proxy Player diagram">
        <div class="card-body">
          <h3 class="card-title">CUDA Graph Runtime</h3>
          <p class="card-text">
            Hybrid runtime combining CUDA Graphs with persistent kernels to cut launch overheads and smooth tail latency,
            enabling dynamic routing with static graph reuse for efficient MoE execution.
          </p>
          <a class="btn btn-primary" href="{{ '/projects/cuda-graph-runtime' | relative_url }}">Learn more</a>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="projects">
  {% assign sorted_projects = site.projects | sort: 'importance' %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for project in sorted_projects %}
      {% include projects.liquid %}
    {% endfor %}
  </div>
</div>
