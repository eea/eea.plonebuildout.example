#!/bin/bash
CONFIG=$1

if [ -z "$CONFIG" ]; then
  if [ -s "development.cfg" ]; then
    CONFIG="development.cfg"
  else
    CONFIG="buildout.cfg"
  fi
fi

wget -O bootstrap.sh https://raw.githubusercontent.com/olimpiurob/eea.plonebuildout.core/master/install.sh
chmod u+x bootstrap.sh
./bootstrap.sh $CONFIG
