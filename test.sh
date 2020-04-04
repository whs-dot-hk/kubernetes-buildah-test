#!/bin/sh

ctr=$(buildah from docker.io/nginx)

mnt=$(buildah mount $ctr)

echo "Hello world" > index.html
cp index.html $mnt/usr/share/nginx/html

buildah unmount $ctr

buildah commit $ctr test
