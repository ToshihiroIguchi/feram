## feram
Launch feram with Docker.

### Description

[feram: MD simulator for bulk and thin-film ferroelectrics](https://loto.sourceforge.net/feram/index.en.html) is available to the public.
I believe that this software is very useful for materials researchers. However, many materials researchers (including myself) are not familiar with Linux.
To make it easy to start, I created a Dockerfile to start feram.

### Activation Method

Build image from Dockerfile.
Install feram.
```
docker build --progress=plain -t feram .
```

Start the container at the same time as creating the container, and log in automatically at that timing.
```
docker run -it feram
```

To get out of the login state, hold down "ctrl" and press "P, Q" in order.
This exit is called "dettach".