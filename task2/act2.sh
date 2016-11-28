#!/bin/bash
act2_1 () {
	find / -perm -a+w -type f | less -XFR
}

main () {
	actionlist1="Меню:\n1. Найти файлы, доступные на запись всем и вывести их список на экран.\nq. Вернуться назад"
	helpstring1="[1] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1"
	welcome1="==================\nВ данном меню можно:\nНайти файлы, доступные на запись всем и вывести их список на экран \n\n\n$actionlist1"
	
	echo -e "$welcome1"
	while true;
	do
	        read action
	        case $action in
	                "1")
	                        act2_1;
	                        echo -e "\n$actionlist1"
	                        ;;
			"q")
	                    	return
	                        ;;
			"help")
				echo -e "$helpstring1"
				read
				echo -e "\n$actionlist1"
				;;
	                *)
	                  	echo Нельзя!; echo -e "\n$actionlist1";
	        esac
	done
}


main "$@";

