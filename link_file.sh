#!/bin/bash

if [ -e ~/.$1 ]; then
  echo $1 found, skipping
else
ln -s $(pwd)/$1 ~/.$1 && echo $1 linked to ~/.$1 || echo Error linking $1
fi
