#!/bin/bash

cd /home/gtr/myRepo/homeDirConfig/ || return
git add -A 
git commit -m "$(date +%Y%m%d)"
git push
