#!/bin/sh

ctr=$(buildah from docker.io/nginx)

buildah commit $ctr test
