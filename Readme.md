#Terminal Todo-list app

## A command-line interface (CLI) application for managing your tasks efficiently. This project demonstrates fundamental concepts in programming and showcases clean, modular code.

This a script that does exactly what a todo app does but on the terminalI made it so that I can check my todo list directly on my terminal whithout having to open an external program and getting distracted and wasting what could be valuable focus time

## Table of Contents 

1. [Features](#features)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Examples](#examples)
5. [Technologies Used](#technologies-used)
6. [Contrubuting](#contributing)
7. [Licence](#licence)

---

## Features 
    -Add, show and delete tasks from terminal.
    -Save and load tasks from a file.

## Installation 
1. Clone this repository :  
    ```bash
    git clone https://github.com/missipsag/Terminal-todo-list.git

2. Navigate to the project directory : 
    ```bash 
    cd Terminal-todo-list

3. Move the todos.sh file into /usr/local/bin
    ```bash
    sudo mv todos.sh /usr/local/bin

## Usage 
1. Add a task : 
    ```bash 
    todo add task #Replace task by the actual task 

2. Delete a task : 
    ```bash
    todo clear/cl line_Number # provide the line number of the task to delete

3. Show current tasks : 
    ```bash 
    todo show 

## Examples
1. Add a task : 
    ![add a task](./photo/add.png)

2. Show current tasks : 
    ![show current tasks](./photo/show.png)

3. Clear a task :
    ![clear a task](./photo/clear.png)

4. Get help page : 
    ![get help](./photo/help.png)


## Technologies Used 
    * Programming Language : Bash

## Contributing 
Contribution are welcome! 

1. Fork this repository.
2. Create a new branch for your feature/bugfix.
3. Submit a pull request with a detailed explanation of the changes.

## Licence 
This project is licenced under the MIT Licence