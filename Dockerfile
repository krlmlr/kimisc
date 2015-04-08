## Emacs, make this -*- mode: sh; -*-

## start with the rocker 'daily' R-devel image
FROM rocker/hadleyverse:latest

## This handle reaches Kirill
MAINTAINER "Kirill Müller" krlmlr+github@mailbox.org

## Copy DESCRIPTION file to be able to install dependencies
COPY DESCRIPTION /pkg-src/

## Install dependencies
RUN cd /pkg-src && \
  Rscript -e "install.packages('devtools'); devtools::install_deps()"
