# lil-cloud

A 3-node raspberry pi cluster with one master and 2 slaves

![IMG_2267](https://user-images.githubusercontent.com/9902184/118766921-ed5aef00-b831-11eb-9d54-933c252ae5d8.jpg)


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


## troubleshooting
When cannot connect via ssh
1. Check if you are on correct wifi
2. Confirm the ip address of master has changed
```
arp -a

...
masterpi (192.xxx.0.xxx) at dc:xx:xx:bb:99:kk on en0 ifscope [ethernet]
...

```

3. If 2 fails, connect masterpi to display, and manually check if connected to internet and if so, whats the new ip. Note that this won't be the ip that you can check on google, that would be public ip, we need local network ip, will have to use terminal.
