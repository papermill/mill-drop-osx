#!/bin/bash

# fix PATH
PATH=$PATH:/usr/texbin/:/usr/local/bin/

# see if we have an arg (dropped file) or not

if [ -z $1 ]

  then
   echo "Ready to mill" #nothing to do

  else
    /usr/local/bin/node /Users/work/Dropbox/Papermill/mill/bin/mill output "$1"

fi