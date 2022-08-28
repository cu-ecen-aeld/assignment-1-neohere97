#!/bin/bash
filesdir=$1
searchstr=$2

if [ -z "$filesdir" ] || [ -z "$searchstr" ]
  then
    echo "One of the parameter not supplied"
    exit 1
fi

if [[ ! -f "$filesdir" ]]
  then
    $(mkdir -p "$(dirname "${filesdir}")")
fi

$(echo "$searchstr" > "$(dirname "${filesdir}")"/"$(basename "${filesdir}")")
echo "file directory has been created I think"

exit 0

