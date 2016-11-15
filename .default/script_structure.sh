#!/bin/bash
script_location="$(dirname "$(echo "$(pwd)$(echo "$0" | sed -r s/'^\.'//g)")")"  
#exit 0;
helpstring="Script\nOlolo\n"
actionlist="Главное меню:\n1. %ACTION1%\n2. %ACTION2%\n3. %ACTION3%\nq. Выход из программы"
welcome="==================\nС помощью данной программы вы можете %ACTIONS%.\n\nРазработчики: Михалева, Кудашова, Казинкина, Калиничева\n\n\n$actionlist"
if [ ! -z "$(echo $@ | grep -- '--help')" ]; then 
	echo -e "$helpstring"; exit 0; 
fi

if [ -z "$(whoami | grep root)" ];
then
	echo "Сценарий работает только от имени пользователя root!"
	exit 77 #EX_NOPERM
fi


act1 () {
	source $script_location/act1.sh
	act1-1;
}

act2 ()	{
        source $script_location/act2.sh
}

act3 ()	{
        source $script_location/act3.sh
}


echo -e "$welcome"
while true;
do
	read action
	case $action in
		"1")
			act1;
			echo -e "\n$actionlist"
			;;
		"2")
			act2;
			echo -e "\n$actionlist"
                        ;;
		"3")
			act3;
			echo -e "\n$actionlist"
                        ;;
		"q")
			exit 0;
                      	;;
		*)
			echo invalid option; echo -e "\n$actionlist";
	esac
done
