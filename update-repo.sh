#!/bin/bash
set -x #echo on

dpkg-scanpackages ./repo/debs ./repo > ./repo/Packages
bzip2 -fks ./repo/Packages

git add ./repo/*
git commit -m "Updated repo"
git push
