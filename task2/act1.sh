#!/bin/bash
act1_1 () {
	source $script_location/act1_1.sh
}

act1_2 () {
	source $script_location/act1_2.sh
}

act1_3 () {
	source $script_location/act1_3.sh
}

main () {
	actionlist1="Меню:\n1. Изменить права доступа\n2. Изменить владельца и группу файла\n3. Изменить ACL права файла\nq. Вернуться назад"
	helpstring1="[1..3] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1"
	welcome1="==================\nВ данном меню можно:\nИзменить права доступа, владельца и группу файла, ACL-права \n\n\n$actionlist1"
	
	echo -e "$welcome1"
	while true;
	do
	        read action
	        case $action in
	                "1")
	                        act1_1;
	                        echo -e "\n$actionlist1"
	                        ;;
	                "2")
	                        act1_2;
	                        echo -e "\n$actionlist1"
	                        ;;
	                "3")
	                        act1_3;
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
