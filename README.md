# godev

Go development with Vim+[Janus][janus-url], [vim-go][vim-go-url]
binaries and [godep][godep-url]

Docker Hub: [kmcgrath/godev][godev-hub-url]

Github: [kmcgrath/docker-godev][godev-github-url]

## Use

The following commands will mount the current directory on the host in
the `GOPATH` in the container.  The working directory will be set to
that directory.

Replace `APP` in `/go/src/APP` with the name of your application, such as:

    /go/src/my-app

or

    /go/src/github.com/username/my-app


### Get a shell

    docker run -it -v "$PWD":/go/src/APP  -w /go/src/APP kmcgrath/godev bash

Within a shell there is access to `go`, `godep`, `vim` and other go
binaries. This is a good place to do `go get` and `godep save`. The
`vendors` and `Godeps` directories will be written to the bind mount on the
host.

### Straight to vim

    docker run -it -v "$PWD":/go/src/APP  -w /go/src/APP kmcgrath/godev vim .


### Run a Makefile

    docker run -it -v "$PWD":/go/src/APP  -w /go/src/APP kmcgrath/godev make


[godev-hub-url]: https://hub.docker.com/r/kmcgrath/godev/
[godev-github-url]: https://github.com/kmcgrath/docker-godev
[godep-url]: https://github.com/tools/godep
[janus-url]: https://github.com/carlhuda/janus
[vim-go-url]: https://github.com/fatih/vim-go
