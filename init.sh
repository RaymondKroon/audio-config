#!/bin/bash

rm  /etc/pulse/*

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

for f in $DIR/.pulse/*
do
  echo "Linking $f in /etc/pulse"
  # take action on each file. $f store current file name
  ln -s $f /etc/pulse/$(basename $f)
done
