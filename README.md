# rpi-couchdb

A test container to run [CouchDB](https://couchdb.apache.org/) 1.7.1 on the [Raspberry Pi](https://www.raspberrypi.org/).

Intended for use with [Nomie.io](https://nomie.io/) on a home project.

## Build docker image (optional)

```
# clone repo
git clone git@github.com:erinlkolp/rpi-couchdb.git

# build container
make build
```

## Run docker container

```
docker run -d -p 5984:5984 ekolp/rpi-couchdb:latest
```

Author: Erin L. Kolp <erinlkolpfoss@gmail.com>

