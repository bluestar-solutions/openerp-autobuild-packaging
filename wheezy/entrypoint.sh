#!/bin/bash

# Clear out the /build and /release directory
rm -rf /build/*
rm -rf /release/*

# Re-pull the repository
git clone https://github.com/bluestar-solutions/openerp-autobuild.git src
cd src
git checkout develop
cp -R /root/debian .

dch -M -l "~b`date +%Y%m%d%H%M`~wheezy" "Build `date +%Y%m%d%H%M`"
dch -M -r --distribution wheezy-backports ""
cp debian/changelog /release/
debuild -i -us -uc -b
cd ..
cp *.deb /release/