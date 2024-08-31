#!/bin/bash

TODO_FILE="$HOME/.todo-list"

if [ ! -f "$TODO_File" ];
then 
    touch "$TODO_FILE"
fi 

#todos array
todos=()

#todos to delete array
todos_to_delete=()

j=0

if [ $1 == "add" ]  #check if the option is add
then 
    #shifting so that we don't include the option in our array
    shift
    for i in {2..$#}
    do
        ${todos[$j]}="$1"
        $((++j))
        shift  
    done
elif [ $1 == "remove" ]  #check if the option is remove
then
    #shifting so that we don't include the option in our array
    shift
    for i in {2..$#}
    do
        ${todos_to_delete[$j]}="$1"
        $((++j))
        shift  
    done
fi



function help () {
    echo ""
    echo "todo <verb> <arguments>"
    echo ""
    echo "verbs :"
    echo ""
    echo "add, -a : add a task to the todo list, it accepts String"
    echo "remove, rm, -r  : removes a task from the todo list, accepts either Strings or todos indecies"
    echo "show, sh, -s : shows the current tasks "
    echo " "
}


function show () {
    for todo in ${todos[@]}
    do 
        echo "$todo"
    done
}

function add () { 


    #here we use a for loop to iterate through the todos array and add them to the list 
    #${#todos[@]} is the length of the todos array

    for index in ${#todos[@]}
    do 
        echo " ${todos[$index]}" >> TODO_FILE
    done    
    
}


function remove () {

    #here we ask the user to enter a task or an array of todos
    read -p -a "please enter the task or task number to delete : " todos_to_delete
    if [ ${#todos_to_delete[@]} -eq 0 ]; 
    then 
        echo "please pass in an argument, try again"
    else 
       for index in {0..${#todos[@]}}
        do 
            sed "${task_to_delete[$index]}d"
        done 
    fi
}



case $1 in 
    --help | -h) help 
    ;;
    add | -a) add "$2"
    ;;
    remove | rm | -r) remove "$2"
    ;;
    show | -s | sh) show  
esac 