#!/bin/bash

# Clear out the /build and /release directory
rm -rf /build/*

# Re-pull the repository
git clone https://github.com/bluestar-solutions/openerp-autobuild.git src
cd src
git checkout develop
cp -R /root/debian .

dch -M -l "~b`date +%Y%m%d%H%M`~jessie" "Build `date +%Y%m%d%H%M`"
dch -M -r --distribution jessie-backports ""
debuild -i -us -uc -b
