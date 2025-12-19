---
layout: page
title: CUDA Graph Runtime
description: Hybrid runtime for GPU inference combining CUDA Graphs with persistent kernels to cut launch overheads.
importance: 2
category: systems
github:
image: /assets/img/project/cuda-proxy.png
---

<p align="center">
  <img src="{{ '/assets/img/project/cuda-proxy.png' | relative_url }}" alt="CUDA Graph Runtime diagram" style="max-width: 780px; width: 100%; border-radius: 12px; box-shadow: 0 6px 20px rgba(0,0,0,0.18);" loading="lazy">
</p>

Course/research project exploring how to overlap GPU scheduling with CUDA Graph replay. Implemented a hybrid runtime
that stitches graph-based execution with persistent kernels to smooth tail latency on bursty inference workloads, plus
profiling to understand utilization bottlenecks on A100s.

[Project report (PDF)]({{ '/assets/img/project/CUDAproxy_rpt.pdf' | relative_url }})
