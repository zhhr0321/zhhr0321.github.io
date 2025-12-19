---
layout: page
title: CUDA Graph Runtime
description: Hybrid runtime for GPU inference combining CUDA Graphs with persistent kernels to cut launch overheads.
importance: 2
category: systems
github:
image: /assets/img/project/cuda-proxy.png
---

![CUDA Graph Runtime diagram]({{ '/assets/img/project/cuda-proxy.png' | relative_url }})

Course/research project exploring how to overlap GPU scheduling with CUDA Graph replay. Implemented a hybrid runtime
that stitches graph-based execution with persistent kernels to smooth tail latency on bursty inference workloads, plus
profiling to understand utilization bottlenecks on A100s.

[Project report (PDF)]({{ '/assets/img/project/CUDAproxy_rpt.pdf' | relative_url }})
