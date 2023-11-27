#!/bin/bash

VAL_DATA=${1}

for line in `cat known_sources`
do
  if [ ${VAL_DATA} == ${line} ]
  then
    #touch metadata.file
    #echo ${line} >> metadata.file
    echo "${VAL_DATA} is on known_sources."
  fi
done
