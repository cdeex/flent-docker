# flent-docker
Dockerized flent app for RRUL Network test


## Building image
```sh
$ docker build -t flentocker -f Dockerfile .
```


## Running container
```sh
docker run -it --entrypoint /bin/bash --volume=/data/.docker/flentocker/data:/data --name flent flentocker
```
Note: volume is used for storing plots from tests



## Running flent inside docker
```sh
flent rrul -p all_scaled -l 60 -H netperf-eu.bufferbloat.net -o /data/RRUL_Test018.png --figure-width=20 --figure-height=15 -t SQM_300k_20k -z
```



### Recommended test:
- rrul
- rrul_torrent
- rtt_fair
- tcp_12down


All available tests can be displayed with
```sh
$ flent --list-tests
```



### Inspired by:

[Bufferbloat - Wikiipedia](https://en.wikipedia.org/wiki/Bufferbloat)

[bufferbloat.net](https://www.bufferbloat.net/projects/bloat/wiki/Getting_SQM_Running_Right/)

[OpenWRT SQM configuration](https://openwrt.org/docs/guide-user/network/traffic-shaping/sqm)

