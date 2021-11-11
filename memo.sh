#!/usr/bin/zsh

file=memo_`date "+%Y%m%d"`.md
if [ "$1" != "" ]; then
  file=memo_$1.md
fi

pwd=`pwd`
cd ~/Documents/memo/
if [ ! -e $file ]; then
    touch $file
    echo 'create '$file
else
    echo $file' already exist.'
fi
cd $pwd

code ~/Documents/memo/$file