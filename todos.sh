#!/bin/bash

#This a script that does exactly what a todo app does but on the terminal
#I made it so that I can check my todo list directly on my terminal whithout having 
# to open an external program and getting distracted and wasting what could be valuable 
# focus time

TODO_FILE="$HOME/.todo-list" #declare a file where to put the todos

if [ ! -f "$TODO_File" ]; #check if the todo-list file is already created ( if its the first time using the script)
then 
    touch "$TODO_FILE"
fi 

case "$1" in 
     help) 
        echo ""
        echo "todo <verb> <arguments>"
        echo ""
        echo "verbs :"
        echo ""
        echo "add : add a task to the todo list, it accepts String"
        echo "clear : clears/removes a task from the todo list, accepts a number"
        echo "show : shows the current tasks "
        echo " "
    ;;
    add ) 
       cat >> $TODO_FILE
       echo ""
        
    ;;
    clear || cl)
        if [ ! $2 ]; #check if the line number was provided by the user
        then 
            echo "please enter the line number of the task to delete"
        else
        sed -i "$2 d" $TODO_FILE #deleting the task which line number was provided by the user 
        fi
    ;;
    show ) 
        
    echo "Current todos : "
    nl $TODO_FILE

esac 


