---
layout: about
title: Haoran Zhang
permalink: /
subtitle: CS @ University of Michigan · systems reliability & ML infrastructure
profile:
  align: right
  image: profile_picture.JPG
  image_circular: false
  # more_info: >
  # <p>CS @ Umich + ME @SJTU>

  # more_info: >
    # <p>UM–SJTU Joint Institute</p>
    # <p>zhhaoran@umich.edu</p>
    # <p>Based in Ann Arbor & Shanghai</p>
selected_papers: false
social: true
announcements:
  enabled: false
latest_posts:
  enabled: false
---

Hi, I'm Haoran Zhang

I’m a senior undergraduate in **Computer Science** at the **University of Michigan**, also pursuing a dual degree in **Mechanical Engineering** at **Shanghai Jiao Tong University**.

My research interests lies broadly in **Systems Reliability**, *(Systems for Machine Learning)* and **Machine Learning for System**. And I'm  I am doing some related projects in agentic distributed system, MoE inference acceleration etc.
<!-- I am a senior undergraduate double-majoring in Computer Science and Mechanical Engineering. I enjoy building
and stress-testing computer systems that have to stay reliable under load, especially when they run large-scale ML
workloads. Lately I have been exploring how complex distributed services fail in practice and how runtime systems
can keep them performant. -->

### Research & project interests
- Distributed systems reliability and fail-slow behavior
- Runtime systems for GPU-heavy ML inference and training
- Tooling for observing, diagnosing, and mitigating production incidents

### Selected projects
#### Agentic Distributed System Ops
Order Lab @ UMich · May 2025–Present · advised by [Ryan Huang](https://web.eecs.umich.edu/~ryanph/)

<p align="center">
  <img src="{{ '/assets/img/project/agentic.png.png' | relative_url }}" alt="Agentic Distributed System Ops diagram" style="max-width: 420px; width: 100%; border-radius: 12px; box-shadow: 0 6px 20px rgba(0,0,0,0.18);" loading="lazy">
</p>

Agent-based auto-mitigation loop (reproduce → measure → decide → mitigate) for ZooKeeper clusters; chaos-injection, HAProxy/Resilience4j mitigations, and Prometheus/JMX observability to handle overload and network faults.  
[Learn more →]({{ '/projects/agentic-ds-ops' | relative_url }}){: .btn .btn-primary }

#### CUDA Proxy Player (Hybrid CUDA Runtime)
UMich CSE 582 · Aug–Dec 2025 · taught by [Ryan Huang](https://web.eecs.umich.edu/~ryanph)

<p align="center">
  <img src="{{ '/assets/img/project/cuda-proxy.png' | relative_url }}" alt="CUDA Graph Runtime diagram" style="max-width: 420px; width: 100%; border-radius: 12px; box-shadow: 0 6px 20px rgba(0,0,0,0.18);" loading="lazy">
</p>

Hybrid CUDA runtime combining CUDA Graphs with persistent kernels to cut launch overheads and smooth tail latency on bursty MoE-style inference, keeping routing flexible while reusing captured graphs.  
[Learn more →]({{ '/projects/cuda-graph-runtime' | relative_url }}){: .btn .btn-primary }


#### COCONUT Replication
Course project on latent reasoning for LLMs (GSM8k / ProsQA) extending the COCONUT framework; instrumented prompts/beam search to study token efficiency vs. accuracy and hallucination trade-offs.

<!-- ### Contact
Email is best for anything related to systems reliability, ML infrastructure, or cross CS/ME work. GitHub holds most
code that can be shared publicly. -->
