#!/bin/bash

#printing the exit status of previous command
ls -ltr
echo "exit status : $?"
lsss -ltr
echo "exit status : $?"

#if exit status is "0" it means the previous command is ran successfully in script
#if other than "0" is appeared means the command is failed
#for failure ---> 1-127

#success
# [ ec2-user@ip ~/shell-script ]$ ls
# 01-hello-world.sh  03-variables.sh  05-variables.sh  07-addition-of-2numbers.sh  09-inside-shell.sh       11-greaterthan-100.sh
# 02-variables.sh    04-variables.sh  06-variables.sh  08-array.sh                 10-special-variables.sh  12-exit-status.sh
# [ ec2-user@ip ~/shell-script ]$ echo $?--->0


#failure
# [ ec2-user@ip ~/shell-script ]$ lssss
# 01-hello-world.sh  03-variables.sh  05-variables.sh  07-addition-of-2numbers.sh  09-inside-shell.sh       11-greaterthan-100.sh
# 02-variables.sh    04-variables.sh  06-variables.sh  08-array.sh                 10-special-variables.sh  12-exit-status.sh
# [ ec2-user@ip ~/shell-script ]$ echo $?--->127