#!/bin/bash
set -x #echo on

rm Packages{,.bz2}
dpkg-scanpackages -m debs / > Packages
bzip2 -fks Packages

git add ./*
git commit -m "Updated repo"
git push
