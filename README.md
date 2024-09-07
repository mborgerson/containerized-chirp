Containerized [CHIRP-next](https://chirpmyradio.com/projects/chirp/wiki/Home)

> CHIRP is a free, open-source tool for programming your radio. It supports a large number of manufacturers and models, as well as provides a way to interface with multiple data sources and formats.

```bash
xhost local:root
docker run --rm -v $PWD:/root/configs -v /tmp/.X11-unix:/tmp/.X11-unix --group-add keep-groups --device=/dev/ttyUSB0 -e DISPLAY=$DISPLAY ghcr.io/mborgerson/containerized-chirp:main
```
