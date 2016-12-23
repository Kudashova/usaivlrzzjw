#!/bin/bash
act1_2_1 () {
read -e -p "Новый владелец: " owner;
if [[ ! -z "$(cat /etc/passwd | cut -d':' -f1 | grep "$owner")" ]]
then
	if [[ -d "$filename" ]]
	then
		echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
		read answer 
		case "$answer" in
			"1")
				chown -R "$owner" "$filename"
				;;
			"2")
				chown "$owner" "$filename"
				;;
			*)
				echo "Ошибка!"
				;;   
		esac
	else
		chown "$owner" "$filename"
	fi
else
	echo "Нет такого пользователя!"
fi
}

act1_2_2 () {
read -e -p "Новая группа: " group;
if [[ ! -z "$(cat /etc/group | cut -d':' -f1 | grep "$group")" ]]
then
	if [[ -d "$filename" ]]
	then
		echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
		read answer 
		case "$answer" in
			"1")
				chown -R :"$group" "$filename"
				;;
			"2")
				chown :"$group" "$filename"
				;;
			*)
				echo "Ошибка!"
				;;   
		esac
	else
		chown :"$group" "$filename"
	fi
else
	echo "Нет такой группы!"
fi
}

main () {
	actionlist1_2="Меню:\n1. Заменить владельца\n2. Заменить группу\nq. Вернуться назад"
	helpstring1_2="[1..2] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1_2"
	welcome1_2="==================\nВ данном меню можно:\nЗаменять группу и владельца файла\n\n\n$actionlist1_2"
	
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
