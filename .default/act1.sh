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
	helpstring1="This is act1 options............."
	actionlist1="Меню:\n1. Subaction1\n2. Subactino2\n3. SubacttThreeeeeee\nq. Вернуться назад"
	welcome1="==================\nС Тут Вы можете %%%%%%%% \n\n\n$actionlist1"
	if [ ! -z "$(echo $@ | grep -- '--help')" ]; then
	        echo -e "$helpstring1"; exit 0;
	fi
	
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
	                *)
	                  	echo invalid option; echo -e "\n$actionlist1";
	        esac
	done
}


main;
