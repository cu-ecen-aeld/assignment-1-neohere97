# /***************************************************************************
#  * AESD Assignment 1
#  * Author: Chinmay Shalawadi 
#  * Institution: University of Colorado Boulder
#  * Mail id: chsh1552@colorado.edu
#  * References: Stack Overflow, Man Pages
#  ***************************************************************************/
#!/bin/bash
writefile=$1
writestr=$2

# check if both paramerts are present
if [ -z "$writefile" ] || [ -z "$writestr" ]
  then
    echo "One or both of the parameter(s) not supplied"
    exit 1
fi

#check if directory path exists, if not create
if [[ ! -f "$writefile" ]]
  then
    $(mkdir -p "$(dirname "${writefile}")")
fi

# Wrtie contents to file
$(echo "$writestr" > "${writefile}")

# Check if the fileis successfully created
if [[ ! -f "$writefile" ]]
  then
    echo "File not created, Error Occured!"
    exit 1
fi

exit 0

