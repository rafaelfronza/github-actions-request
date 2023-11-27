#!/bin/bash

VAL_DATA=${1}
REPO_DATA=${2}

for line in `cat known_sources`
do
  if [ ${VAL_DATA} == ${line} ]
  then
    touch metadata.file
    echo ${line} > metadata.file
  else
    echo "Repo not configured in known_sources."
    echo "Please contact us: THE GUYS to help you configure your repo in known_sources."
  fi
done
