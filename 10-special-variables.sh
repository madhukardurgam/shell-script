#!/bin/bash

#no need to give the input here but we have to give dynamically on cli the will get the output
echo "All variables passed: $@"
echo "Number of variables passed: $#"
echo "script name :$0"
echo "present working directory :$PWD"
echo "home directory of user: $HOME"
echo "which user is running the script: $USER"
echo "process id of current script: $$"
sleep 30 & # & is for running the command on background
echo "process id of previous ran command: $!" # "$!" is gives you the previous command of sleep