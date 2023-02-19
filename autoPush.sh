#!/bin/bash

cd $HOME/myRepo/homeDirConfig 
git add -A && git commit -m "`date +\"%Y%m%d\"`"
git push
