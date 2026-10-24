#!/bin/bash

### Special varibales#####

echo "All the arguments passed to the script: $@"
echo "all args passed to the script as a word : $*" 
echo "Number of arguments passed to the script: $#"
echo "First variable passed ; $1"
echo "script name : $0"
echo "Realpath : $(realpath $0)"
echo "who is running current script : $USER"
echo "Directory of the current script:$PWD"
echo "Home directory of the current script: $HOME"
echo "PID of the current script: $$"
sleep 10 & 
echo "PID of the command running in the baground: $!"
wait $! #scripts waits until $! command complete
echo "Line number: $LINENO"
echo "Previous commsnd exit status: $?"
echo "Total time executed for the script: $SECONDS"
