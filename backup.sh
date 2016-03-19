#!/bin/bash
find ./ -path '*/.*' -prune -o -type f -print | zip ~/backup-$(date +%F-%H%M%S).zip -@ -x *.zip
