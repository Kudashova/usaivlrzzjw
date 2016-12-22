#!/bin/bash
act1_3_1 () {
#actionlist1="Меню:\n1. Изменить права доступа\n2. Изменить владельца и группу файла\n3. Изменить ACL права файла\nq. Вернуться назад"
echo "$filename"
read -e -p "Имя пользователя: " username;
#echo "$username"
if [[ ! -z "$(cat /etc/passwd | cut -d':' -f1 | grep "$username")" ]]
then
	read -e -p "Права пользователя [RWX]: " permissions;
	if [[ ! -z "$(echo "$permissions" | grep --extended-regexp '^[r-]?[w-]?[x-]?$')" ]]
	then 
		if [[ -d "$filename" ]]
		then
			echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
			read answer
			case $answer in
				"1")
					setfacl -m --recursive "u:$username:$permissions" "$filename"
					echo
					;;
				"2")
					setfacl -m "u:$username:$permissions" "$filename"
					echo
					;;
				*)
					echo "Ошибка!"
					;;
			esac
		else
			setfacl -m "u:$username:$permissions" "$filename"
		fi
	else
		echo "Права указаны неверно!"
	fi
else
	echo "Нет такого пользователя!"
fi
}

act1_3_2 () {
echo "Selected option act1_3_2";
}

act1_3_3 () {
#read -e -p "Glassfish Path:" GF_DIR;
echo $GF_DIR
}

main () {
	actionlist1_3="Меню:\n1. Добавить запись\n2. Удалить запись\n3. Изменить запись\nq. Вернуться назад"
	helpstring1_3="[1..3] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1_3"
	welcome1_3="==================\nВ данном меню можно:\nДобавлять, изменять, удалять ACL-права файла \n\n\n$actionlist1_3"
	
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
