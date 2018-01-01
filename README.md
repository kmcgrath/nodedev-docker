# nodedev

Go development with Vim+[Janus][janus-url]

Docker Hub: [kmcgrath/nodedev][nodedev-hub-url]

Github: [kmcgrath/docker-nodedev][nodedev-github-url]

## Use

### Get a shell

    docker run -it -v "$PWD":/code kmcgrath/nodedev bash


### Straight to vim

    docker run -it -v "$PWD":/code kmcgrath/nodedev vim .


### Run a Makefile

    docker run -it -v "$PWD":/code kmcgrath/nodedev make


[nodedev-hub-url]: https://hub.docker.com/r/kmcgrath/nodedev/
[nodedev-github-url]: https://github.com/kmcgrath/docker-nodedev
[janus-url]: https://github.com/carlhuda/janus
