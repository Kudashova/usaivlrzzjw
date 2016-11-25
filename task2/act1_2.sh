#!/bin/bash
act1_2_1 () {
echo "Selected option act1_2_1";
}

act1_2_2 () {
echo "Selected option act1_2_2";
}

act1_2_3 () {
read -e -p "Glassfish Path:" GF_DIR;
echo $GF_DIR
}

main () {
	actionlist1_2="Меню:\n1. vvfvs\n2. sdfrf\n3. asdtvt\nq. Вернуться назад"
	helpstring1_2="[1..sdsdsd] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1_2"
	welcome1_2="==================\nВ данном меню можно:\n%возможности_всякие% \n\n\n$actionlist1_2"
	
	echo -e "$welcome1_2"
	while true;
	do
	        read action
	        case $action in
	                "1")
	                        act1_2_1;
	                        echo -e "\n$actionlist1_2"
	                        ;;
	                "2")
	                        act1_2_2;
	                        echo -e "\n$actionlist1_2"
	                        ;;
	                "3")
	                        act1_2_3;
	                        echo -e "\n$actionlist1_2"
	                        ;;
	                "q")
	                    	return
	                        ;;
			"help")
				echo -e "$helpstring1_2"
				read
				echo -e "\n$actionlist1_2"
				;;
	                *)
	                  	echo Нельзя!; echo -e "\n$actionlist1_2";
	        esac
	done
}


main "$@";
