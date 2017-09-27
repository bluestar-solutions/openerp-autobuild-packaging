#!/bin/bash

docker build -t wheezy-oebuild-deb .
docker run -v $(pwd)/build:/build -v $(pwd)/release:/release --name wheezy-oebuild-deb_$(date "+%s") wheezy-oebuild-deb
