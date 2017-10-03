#!/bin/bash

docker build -t jessie-oebuild-deb .
docker run -v $(pwd)/build:/build --name jessie-oebuild-deb_$(date "+%s") jessie-oebuild-deb
