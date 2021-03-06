#!/bin/sh
set -x
# Link files
find /gscuser/jwalker/dotfiles -maxdepth 1 -type f \( -not -name setup.sh \) | while read FILE; do
  BASE=
  # Don't clobber existing file, make a .orig backup
  [ -f /gscuser/jwalker/ ] && mv /gscuser/jwalker/ /gscuser/jwalker/.orig
  ln -s -f  /gscuser/jwalker
done
 
# Link directories
find ~/dotfiles -mindepth 1 -maxdepth 1 -type d \( -not -name .git \) | while read DIR; do
  BASE=
  # Don't clobber existing directory, make a .orig backup
  [ -d /gscuser/jwalker/ ] && mv /gscuser/jwalker/ /gscuser/jwalker/.orig
  ln -s -f  /gscuser/jwalker
done
