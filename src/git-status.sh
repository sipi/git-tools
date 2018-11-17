#!/bin/bash

while true;
do
  clear;
  git status
  echo '[(any)ok/(s)show/(e|q)exit]'
  read n;
  case $n in
    [eqEQ]*) exit;;
    [sS]*) git diff --cached;;
    *) break;;
  esac;
done

for file in $(git status -s | grep -E "^.\S" | sed 's/^...\(.*\)$/\1/');
do
  clear;
  echo $file;
  git diff $file;
  echo '[(a|y)add/(p)patch/(c)checkout/(i|n)ignore/(e|q)exit]?';
  read n;
  case $n in
    [aAyY]*) git add $file;;
    [pP]*) git add -p $file;;
    [cC]*) git checkout $file;;
    [iI|nN]*) ;; # next
    [eEqQ]*) exit;;
    *) ;; # next
  esac;
done

clear;
git status;
echo "commit ? [y/n]"
read n;
case $n in
  [yY]*) 
    echo -n "commit message: "
    read msg;
    git commit -m "$msg"
    ;;
esac
