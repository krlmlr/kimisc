#R package template

This is a template for an empty R package with `roxygen2` and RStudio support.
The following gets you started with a fresh R package on a Linux system
(requires [`hub`](http://defunkt.io/hub/)).
The package will be pushed to GitHub automatically:

    NEW_NAME=YourNewPackage
    git init $NEW_NAME
    cd $NEW_NAME
    hub remote add krlmlr/R-pkg-template
    git remote rename krlmlr R-pkg-template
    git pull --all
    hub create $NEW_NAME
    git pull --ff R-pkg-template stable-0.2
    ./rename $NEW_NAME
    git push -u origin master

Currently, it is really only a package template. Additional features might
include:

- a `Makefile`
- support for pushing to R-Forge's Subversion server
- ...

The idea is to keep the `stable-*` branches stable so that they can be pulled
from even for existing R packages. Moving from one stable branch to another
might require some effort.
