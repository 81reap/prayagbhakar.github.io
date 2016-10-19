#!/bin/bash
set -x #echo on

#Updates Packages
rm Packages{,.bz2}
dpkg-scanpackages -m debs / > Packages
bzip2 -fks Packages

#Commits to GitHub
git add ./*
git commit -m "Updated repo"
git push
