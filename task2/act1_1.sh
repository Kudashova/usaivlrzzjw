#!/bin/bash
act1_1_1 () {
echo "Selected option act1_1_1";
}

act1_1_2 () {
echo "Selected option act1_1_2";
}

act1_1_3 () {
read -e -p "Glassfish Path:" GF_DIR;
echo $GF_DIR
}

main () {
	actionlist1_1="Меню:\n1. sdsd\n2. dede\n3. olol\nq. Вернуться назад"
	helpstring1_1="[1..sdsdsd] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1_1"
	welcome1_1="==================\nВ данном меню можно:\n%возможности_всякие% \n\n\n$actionlist1_1"
	
	echo -e "$welcome1_1"
	while true;
	do
	        read action
	        case $action in
	                "1")
	                        act1_1_1;
	                        echo -e "\n$actionlist1_1"
	                        ;;
	                "2")
	                        act1_1_2;
	                        echo -e "\n$actionlist1_1"
	                        ;;
	                "3")
	                        act1_1_3;
	                        echo -e "\n$actionlist1_1"
	                        ;;
	                "q")
	                    	return
	                        ;;
			"help")
				echo -e "$helpstring1_1"
				read
				echo -e "\n$actionlist1_1"
				;;
	                *)
	                  	echo Нельзя!; echo -e "\n$actionlist1_1";
	        esac
	done
}


main "$@";
