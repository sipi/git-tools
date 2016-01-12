#!/bin/bash

for file in $(git status | grep modified | cut -d ':' -f 2);
do
  clear;
  git diff $file;
  echo [(a)dd/(c)heckout/(n)ext]?;
  read n;
  case $n in
    a) git add $file;;
    c) git checkout $file;;
  esac;
done
