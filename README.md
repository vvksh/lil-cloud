# lil-cloud

A 3-node raspberry pi cluster with one master and 2 slaves

Features:
- [monitoring](#rpi-monitoring)
- shared NFS memory (see [#4](/../../issues/4))




## rpi-monitoring
Monitoring rpi using prometheus and grafana

This repo contains scripts and docker config to set up monitoring for my raspberry pi cluster.

The basic idea is start node_exporter on each machine, start prometheus on master, start grafana on master.

Prometheus scrapers metrics from each `node_exporter` that grafana will show.

To add prometheus source, use `http://10.0.0.1:9090` and use dashboard id: `1860`


- To start grafana/prometheus setup

```
cd monitoring
docker compose up -d
```

everything else should be setup (it should read the previous configs), if not good luck!
