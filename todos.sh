#!/bin/bash

#This a script that does exactly what a todo app does but on the terminal

TODO_FILE="$HOME/.todo-list"

if [ ! -f "$TODO_File" ];
then 
    touch "$TODO_FILE"
fi 


function help () {
    echo ""
    echo "todo <verb> <arguments>"
    echo ""
    echo "verbs :"
    echo ""
    echo "add : add a task to the todo list, it accepts String"
    echo "remove, rm : removes a task from the todo list, accepts either Strings or todos indecies"
    echo "show : shows the current tasks "
    echo " "
}


function show () {
    echo "Current todos : "
    cat $TODO_FILE
}

function add () { 

    echo " **********INSIDE THE ADD FUNCTION ****************"
    #here we use a for loop to iterate through the todos array and add them to the list 
    #${#todos[@]} is the length of the todos array
    local todos="$1"
    for i in "${#todos[@]}";
    do 
        echo " ${todos[$i]}" 
    done    
    
}


function remove () {

    
    if [ ${#todos_to_delete[@]} -eq 0 ]; 
    then 
        echo "please pass in an argument, try again"
    else 
       for i in {0..${#todos[@]}}
        do 
            sed "${task_to_delete[i]}d" TODO_FILE
        done 
    fi
}



case "$1" in 
     help) help 
    ;;
    add ) 
        #todos array
        declare -a todos

        j=0
        shift #shifting so that we don't include the option in our array
        while [ $# -gt 0 ]
        do
            ${todos[$j]}="$1"
            ((j++))
            shift  
        done
        add "todos"
    ;;
    remove | rm ) 
        #todos to delete array
        declare -a todos_to_delete

        j=0
        shift #shifting so that we don't include the option in our array
        while [ $# -gt 0 ]
        do
            todos_to_delete[$j]="$1"
            ((j++))
            shift  
        done
        remove "todos_to_delete"
    ;;
    show ) show  
esac 