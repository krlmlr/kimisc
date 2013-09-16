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
    git pull --ff R-pkg-template stable-0.4
    tools/rename $NEW_NAME
    git push -u origin master

Additional features might include:

- a `Makefile`
- ...

The idea is to keep the `stable-*` branches stable so that they can be pulled
from even for existing R packages. Moving from one stable branch to another
might require some effort.


##Travis-CI integration

With [Travis-CI](https://travis-ci.org/) you can have your package checked
automatically each time you push to GitHub. All you need is to login and
flip a switch on the Travis-CI website,
the service is free of charge for open-source projects.
The template already contains a generic `.travis.yml` following
[Yihui Xie's recipe](http://yihui.name/en/2013/04/travis-ci-general-purpose/).
It is an adapted version of
[the file](https://github.com/yihui/knitr/blob/master/.travis.yml)
in the [knitr](http://yihui.name/knitr/) package.


##Pushing to R-Forge's Subversion server

The `tools` subdirectory contains two scripts that allows setting up a `git-svn`
connection to R-Forge (or any other SVN server, for that matter). The setup
closely follows the [blog post](http://cameron.bracken.bz/git-with-r-forge)
by Cameron Bracken.

To initialize the link, execute `tools/setup-r-forge <your-svn-URL>`. If you
link with R-Forge, this should be the the path to the `pkg` subdirectory in the
SVN repo, or to the `pkg/pkg-name` subdirectory if there are several packages.
When executed the first time, all previous Git commits in the `master` branch
are pushed as a single
commit to SVN. The script should also work for a fresh Git checkout when
the SVN repo contains (a part of) the commits in `master`. In this case,
for technical reasons, sometimes a dummy commit will be pushed to SVN.
After that, `tools/update-r-forge` will push the current state of `master` to
SVN.

Both scripts require a clean working copy. Should you ever need to merge changes
from SVN back to Git, you can execute `git merge r-forge` for the
`master` branch.
