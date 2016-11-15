#!/bin/bash
helpstring="Script\nOlolo\n"
welcome="==================\nС помощью данной программы вы можете %ACTIONS%.\n\nРазработчики: Михалева, Кудашова, Казинкина, Калиничева\n\nГлавное меню:\n\n1. %ACTION1%\n2. %ACTION2%\n3. %ACTION3%\nq. Выход из программы"
if [ ! -z "$(echo $@ | grep -- '--help')" ]; then 
	echo -e "$helpstring"; exit 0; 
fi

if [ -z "$(whoami | grep root)" ];
then
	echo "Сценарий работает только от имени пользователя root!"
	exit 77 #EX_NOPERM
fi

while true;
do
	echo -e "$welcome"
	read action
	case $action in
		"1")
			echo "you chose choice #1"
			;;
		"2")
			echo "you chose choice #2"
                        ;;
		"3")
			echo "you chose choice #3"
                        ;;
		"q")
			exit 0;
                      	;;
		*)
			echo invalid option;;
	esac
done

exit 0;

S3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
	case $opt in
		"Option 1")
			echo "you chose choice 1"
			;;
		"Option 2")
			echo "you chose choice 2"
			;;
		"Option 3")
			echo "you chose choice 3"
			;;
		"Quit")
			break
			;;
		*)
			echo invalid option;;
			
	esac
done
