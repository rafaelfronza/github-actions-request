#!/bin/bash

VAL_DATA=${1}

for line in `cat known_sources`
do
  if [ ${VAL_DATA} == ${line} ]
  then
    #touch metadata.file
    #echo ${line} >> metadata.file
    echo "${VAL_DATA} is on known_sources."
  else
    echo "Module not configured in known_sources."
    echo "Please contact us: THE GUYS to help you configure your repo in known_sources."
  fi
done
