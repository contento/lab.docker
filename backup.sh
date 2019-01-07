#!/bin/bash

projectName=${PWD##*/}
backupPath=~/backup/$projectName

if [ ! -d  $backupPath ]; then
  mkdir -p $backupPath
fi

find ./ -path '*/.*' -prune -o -type f -print | zip "$backupPath/$projectName-$(date +%F-%H.%M.%S).zip" -@ -x *.zip
