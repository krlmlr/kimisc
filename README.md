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
    git pull --ff R-pkg-template master
    ./rename $NEW_NAME
    git push -u origin master

