#!/bin/bash
filesdir=$1
searchstr=$2

if [ -z "$filesdir" ] || [ -z "$searchstr" ]
  then
    echo "One of the parameter not supplied"
    exit 1
fi

if [[ ! -d "$filesdir" ]]
  then
    echo "Invalid path to filesdirectory"
    exit 1
fi


NUM_FILES=`grep -r -l $searchstr $filesdir | wc -l`
NUM_LINES=`grep -r $searchstr $filesdir | wc -l`
echo "The number of files are $NUM_FILES and the number of matching lines are $NUM_LINES"

exit 0

