## feram
Launch feram with Docker.

### Description

[feram: MD simulator for bulk and thin-film ferroelectrics](https://loto.sourceforge.net/feram/index.en.html) is available to the public.
We believe that this software is very useful for materials researchers. However, many materials researchers (including myself) are not familiar with Linux.
To make it easy to start, I created a Dockerfile to start feram.

### Activation Method

docker build --progress=plain -t feram .

docker run feram

docker container exec -it コンテナ名 bash

