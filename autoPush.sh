#!/bin/bash

cp /home/gtr/.zsh_history /home/gtr/myRepo/homeDirConfig/
cd /home/gtr/myRepo/homeDirConfig/ || return
git add -A 
git commit -m "$(date +%Y%m%d)"
git push
