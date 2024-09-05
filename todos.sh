#!/bin/bash

#This a script that does exactly what a todo app does but on the terminal

TODO_FILE="$HOME/.todo-list"

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
        echo "remove, rm : removes a task from the todo list, accepts a number"
        echo "show : shows the current tasks "
        echo " "
    ;;
    add ) 
       cat >> $TODO_FILE
       echo ""
        
    ;;
    remove | rm )
        if [ ! $2 ]; 
        then 
            echo "please enter the line number of the task to delete"
        fi
        sed -i "$2 d" $TODO_FILE
        
    ;;
    show ) 
        
    echo "Current todos : "
    nl $TODO_FILE

esac 


