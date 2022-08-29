# /***************************************************************************
#  * AESD Assignment 1
#  * Author: Chinmay Shalawadi 
#  * Institution: University of Colorado Boulder
#  * Mail id: chsh1552@colorado.edu
#  * References: Stack Overflow, Man Pages
#  ***************************************************************************/
#!/bin/bash
filesdir=$1
searchstr=$2

if [ -z "$filesdir" ] || [ -z "$searchstr" ]
  then
    echo "One or both of the parameter(s) not supplied"
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

