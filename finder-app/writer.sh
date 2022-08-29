#!/bin/bash
writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]
  then
    echo "One of the parameter not supplied"
    exit 1
fi

if [[ ! -f "$writefile" ]]
  then
    $(mkdir -p "$(dirname "${writefile}")")
fi

$(echo "$writestr" > "$(dirname "${writefile}")"/"$(basename "${writefile}")")
echo "file directory has been created I think"

exit 0

