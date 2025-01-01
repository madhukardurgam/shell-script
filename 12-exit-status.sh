#!/bin/bash

#printing the exit status of previous command
ls -ltr
echo "exit status : $?"
lsss -ltr
echo "exit status : $?"

#if exit status is "0" it means the previous command is ran successfully in script
#if other than "0" is appeared means the command is failed
#for failure "1-127"
