#!/bin/bash

main () {
	#ps -aux | less
	pwd
	echo $0
	read -e -p "Variable=" variable
	echo $variable
}


main;
