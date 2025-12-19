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

![Agentic Distributed System Ops diagram]({{ '/assets/img/project/agentic.png.png' | relative_url }})

- Built an agent-based auto-mitigation loop (reproduce -> measure -> decide -> mitigate) for overload, network latency/loss/partitions.
- Targets: Apache ZooKeeper/HDFS (3-node dev clusters) with fault injection via ChaosBlade/Chaos Mesh and `tc` netem; synthetic workload generators.
- Mitigation: HAProxy (TCP routing/failover) and Resilience4j (circuit breaker, bulkhead, rate limiter) with scripted rollback/timeout policies.
- Observability: Prometheus + JMX Exporter + ps/JVM flags tracking SLOs (`p99_latency`, `outstanding_requests`) and system metrics (`iface_throughput`, `cpu_usage`).

#### CUDA Proxy Player (Hybrid CUDA Runtime)
UMich CSE 582 · Aug–Dec 2025 · taught by [Ryan Huang](https://web.eecs.umich.edu/~ryanph)

![CUDA Graph Runtime diagram]({{ '/assets/img/project/cuda-proxy.png' | relative_url }})

- Designed a hybrid CUDA runtime combining CUDA Graphs for steady compute paths with persistent kernels for irregular on-device tasks.
- Reduced kernel-launch overheads and tail latency without brittle fusion, enabling dynamic routing while reusing captured graphs.
- Implemented bucket-based static pooling, piecewise graph capture, and stream-level synchronization to keep MoE-style workloads smooth.


#### COCONUT Replication
Course project on latent reasoning for LLMs (GSM8k / ProsQA) extending the COCONUT framework; instrumented prompts/beam search to study token efficiency vs. accuracy and hallucination trade-offs.

<!-- ### Contact
Email is best for anything related to systems reliability, ML infrastructure, or cross CS/ME work. GitHub holds most
code that can be shared publicly. -->
