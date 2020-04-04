#!/bin/sh

ctr=$(buildah from docker.io/nginx)

mnt=$(buildah mount $ctr)

buildah unmount $ctr

buildah commit $ctr test
