#!/bin/bash
act1-1 () {
echo "Selected option act1-1";
}

act1-2 () {
echo "Selected option act1-2";
}

act1-3 () {
read -e -p "Glassfish Path:" GF_DIR;
}

main () {
	helpstring1="This is act1 help............."
	actionlist1="Меню:\n1. Subaction1\n2. Subactino2\n3. SubacttThreeeeeee\nq. Вернуться назад"
	welcome1="==================\nС Тут Вы можете %%%%%%%% \n\n\n$actionlist1"
	
	echo -e "$welcome1"
	while true;
	do
	        read action
	        case $action in
	                "1")
	                        act1-1;
	                        echo -e "\n$actionlist1"
	                        ;;
	                "2")
	                        act1-2;
	                        echo -e "\n$actionlist1"
	                        ;;
	                "3")
	                        act1-3;
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
	                  	echo invalid option; echo -e "\n$actionlist1";
	        esac
	done
}


main;
