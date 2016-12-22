#!/bin/bash
act1 () {
	source $script_location/act1.sh
}

act2 ()	{
        source $script_location/act2.sh
}

main () {
	script_location="$( cd "$(dirname $0)" ; pwd -P )"
	helpstring="Usage: script.sh [FILE]...\nУправление безопасностью файлов и каталогов\nПараметры вызова:\n--help	Вывести это сообщение и выйти"
	actionlist="Главное меню:\n1. Изменить права доступа файла/папки \n2. Поиск файлов, доступных всем пользователям на запись\nq. Выход из программы"
	welcome="==================\nС помощью данной программы вы можете изменять права доступа файлов/папок, искать файлы, доступные всем пользователям на запись...\n\nРазработчики: 502/Михалева, 502/Кудашова, 502/Казинкина, 502/Калиничева, 502/stdnt-number-three\n\n\n$actionlist"
	if [ ! -z "$(echo $@ | grep -- '--help')" ]; then
	        echo -e "$helpstring"; exit 0;
	fi
	
	if [ -z "$(whoami | grep root)" ]; then
	    	echo "Сценарий работает только от имени пользователя root!"
	        exit 77 #EX_NOPERM
	fi
	
	echo -e "$welcome"
	while true;
	do
		if [ -e "$1" ]; then action=1; else read action; fi	#If parameter[1] of script is an existing file/dir -> goto act1; else -> read $action from keyboard
		case $action in
			"1")
				act1;
				echo -e "\n$actionlist"
				;;
			"2")
				act2;
				echo -e "\n$actionlist"
        	                ;;
			"q")
				exit 0;
	                      	;;
			"help")
				echo -e "$helpstring"
				read
				echo -e "\n$actionlist"
				;;
			*)
				echo Нельзя!; echo -e "\n$actionlist";
		esac
	done
}


main "$@";
