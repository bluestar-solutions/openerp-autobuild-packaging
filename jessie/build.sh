#!/bin/bash

docker build -t jessie-oebuild-deb .
docker run -v $(pwd)/build:/build -v $(pwd)/release:/release --name jessie-oebuild-deb_$(date "+%s") jessie-oebuild-deb
