#!/bin/bash
# Ask the user for application  name
echo Hello, what is application name?
read varname
#value=`cat dod.txt`

if [[ $varname == logs ]]
then
   for i in $(cat dod.txt) ; do echo "*** Server ${i} ***" &&  ssh $i 'tail $(/bin/ls -1t /tmp/test/test* | /bin/sed q)' ; done
elif [[ $varname == logs2 ]]
then
  echo "Hello World2"
fi
echo It\'s nice to meet you $varname


