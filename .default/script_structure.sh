#!/bin/bash
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
	source act1.sh
	act1-1;
}

act2 ()	{
        source act2.sh
}

act3 ()	{
        echo "you chose choice #3"
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
