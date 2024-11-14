#!/bin/bash

#This a script that does exactly what a todo app does but on the terminal
#I made it so that I can check my todo list directly on my terminal whithout having 
# to open an external program and getting distracted and wasting what could be valuable 
# focus time


## Displaying colors using ANSI escape codes.
green() {
    echo -en "\e[32m\e[1m $1 \e[0m"
}

red() {
  echo -e "\e[31m $1 \e[0m"
}

yellow() {
  echo -e "\e[33m $1 \e[0m"
}

blue() {
    echo -e "\e[34m\e[1m $1 \e[0m"
}

blueBackground(){
    echo -e "\e[44m $1 \e[0m"
}

greenBackground() {
    echo -en "\e[42m\e[37m $1 \e[0m"
}

yellowBackground() {
    echo -e "\e[43m $1 \e[0m"
}

redBackground() {
    echo -e "\e[41m\e[37m\e[1m $1 \e[0m"
}


TODO_FILE="$HOME/.todo-list" #declare a file where to put the todos

if [ ! -f "$TODO_File" ]; #check if the todo-list file is already created ( if its the first time using the script)
then 
    touch "$TODO_FILE"
fi 

case "$1" in 
    help) 
        echo ""
        blue "Usage : "
        echo ""
        green "todo <verb> <arguments>"; echo -e "\n "
        blue "verbs : "
        echo ""
        green "add"; echo " : add a task to the todo list."
        green "clear"; echo " : clears/removes a task from the todo list by providing its line number."
        green "show"; echo " : shows the current tasks. "
        echo " "
    ;;
    add )
        echo ""
        blue "Add your task(s). Press Ctrl+d to exit."
        echo ""
        cat >> $TODO_FILE
        echo ""
        green "Task(s) added successfully!" ; echo ""
    ;;
    clear)
        if [ ! $2 ]; #check if the line number was provided by the user
        then 
            redBackground "Please enter the line number of the task to delete."
        else
        sed -i "$2 d" $TODO_FILE #deleting the task which line number was provided by the user 
        red "Task(s) deleted!"
        fi
    ;;
    show ) 
        echo ""
        blue "Current todos :"
        echo ""
        nl $TODO_FILE  #list all the tasks 
        echo ""
    ;;
esac 


