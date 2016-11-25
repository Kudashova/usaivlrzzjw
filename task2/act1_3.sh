#!/bin/bash
act1_3_1 () {
echo "Selected option act1_3_1";
}

act1_3_2 () {
echo "Selected option act1_3_2";
}

act1_3_3 () {
read -e -p "Glassfish Path:" GF_DIR;
echo $GF_DIR
}

main () {
	actionlist1_3="Меню:\n1. gtge\n2. asde\n3. vfevf\nq. Вернуться назад"
	helpstring1_3="[1..sdsdsd] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1_3"
	welcome1_3="==================\nВ данном меню можно:\n%возможности_всякие% \n\n\n$actionlist1_3"
	
	echo -e "$welcome1_3"
	while true;
	do
	        read action
	        case $action in
	                "1")
	                        act1_3_1;
	                        echo -e "\n$actionlist1_3"
	                        ;;
	                "2")
	                        act1_3_2;
	                        echo -e "\n$actionlist1_3"
	                        ;;
	                "3")
	                        act1_3_3;
	                        echo -e "\n$actionlist1_3"
	                        ;;
	                "q")
	                    	return
	                        ;;
			"help")
				echo -e "$helpstring1_3"
				read
				echo -e "\n$actionlist1_3"
				;;
	                *)
	                  	echo Нельзя!; echo -e "\n$actionlist1_3";
	        esac
	done
}


main "$@";
