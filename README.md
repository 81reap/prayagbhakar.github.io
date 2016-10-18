# Website

## Runs:

### Main Website

https://hax0rdoge.github.io

More to come

### Cydia Repo

https://hax0rdoge.github.io/repo

Holds a cydia repo.  
update-repo.sh is an excutable so you cant see the commands it runs easily but here they are:

```shell
#Updates Pacakge
rm Packages{,.bz2}
dpkg-scanpackages -m debs / > Packages
bzip2 -fks Packages

#pushes the changes out to github
cd ..
git add ./repo/*
git commit -m "Updated repo"
git push
```

### FlappyBird Clone

This is just an old clone that I made using pazer.js. I have this hosted for one of the classes that I teach.
