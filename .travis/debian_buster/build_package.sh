#!/usr/bin/env bash

# Find the right sources dir path
SOURCES_DIR=`realpath $0`
SOURCES_DIR=`dirname ${SOURCES_DIR}`

mkdir docker-build-release

sudo docker build -t build/debian:buster ${SOURCES_DIR}
sudo docker run -v ${PWD}:/source -v ${PWD}/docker-build-release:/build build/debian:buster \
    /bin/bash -c "cmake -DINSTALL_LIBAPPIMAGE=On -DINSTALL_ATTICA=On -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release /source && make -j`nproc` && cpack -G DEB -G DEB -R 0.1.1-debian-buster"
