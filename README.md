# Introduction
This repository contains a sample shell script with the goal of understanding how shell scripts work and how to use them!

# What is a Shell Script?
A shell script is a file that contains a sequence of commands for UNIX-based operating systems. To write and use shell scripts, we'll need:
1. Prerequisite knowledge on UNIX commands
    - Basic ones will suffice! You can always type `man <command>` in your CLI or search the web for the man pages.

2. A UNIX-based OS (Sorry to Windows users :bow:)
    - Installing something like Git Bash, Cygwin or WSL will let you run your bash scripts
    - Since I'm not a Windows expert, I'll include links to people who are:
    1. [WSL Documentation](https://learn.microsoft.com/en-us/windows/wsl/)
    2. [How to run a bash script on wsl with powershell?](https://stackoverflow.com/questions/72151630/how-to-run-a-bash-script-on-wsl-with-powershell)

# Basic Workflow
1. Create a file
    - Shell scripts usually end with .sh, but that's just a naming convention.
2. Include path to interpreter in the first line
    - Shell scripts start with `#! /bin/bash` or `#! /bin/zsh`, indicating which shell should be used to interpret the script.
    - If you want to find the path, just type `where <shellname>`
3. Making the script executable
    - Files are not executable by default. You can check what permissions your files have by running the command `ls -l` (list directory in the long format)
        - `-r--` means the file is read-only
        - `--w-` means the file is write-only
        - `-rw-` means the file is readable and writeable
        - `-rwx` means the file is readable, writeable, and executable
        - `drwx`means we have a directory, and being executable allows us to `cd` into the directory
    - To make a file executable, we can just write `chmod u+x <filename>`. This allows the user to run the shell scripts!
4. Profit!
    - With these basic steps done, we have a shell script that you can execute by running `./<scriptname>`! 
    - Obviously, we haven't really added any functionality yet, but you can think of shell scripts as just another way to automate tasks. 
    - This article links to a few common use cases for shell scripts: [Why do we need shell scripting?](https://medium.com/@linuxadminhacks/why-do-we-need-shell-scripting-213117e056e9)

# Adding Functionality  
For the purpose of this tutorial, we'll be making a shell script to look for a file of a given name.

Here are some other helpful tutorial links:
1. [FreeCodeCamp: Shell Scripting Crash Course](https://www.freecodecamp.org/news/shell-scripting-crash-course-how-to-write-bash-scripts-in-linux/)
2. [GeeksForGeeks: Shell Script Examples](https://www.geeksforgeeks.org/shell-script-examples/)

# Shell script vs Makefile?
As a random side note, having used Makefiles in classes, I did wonder if they were the same as shell scripts, and if they were substitutes for one another?

A very interesting point is that Makefiles actually [check for changes to dependencies](https://stackoverflow.com/questions/3798562/why-use-make-over-a-shell-script), whereas shell scripts just run the commands -- unless you want to encode that logic in yourself. Very cool!