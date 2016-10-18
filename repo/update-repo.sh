#!/bin/bash
set -x #echo on

dpkg-scanpackages -m debs / > Packages
bzip2 -fks Packages

cd ..
git add ./repo/*
git commit -m "Updated repo"
git push
