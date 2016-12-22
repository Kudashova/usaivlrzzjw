#!/bin/bash
act1_3_1 () {
echo -e "Вы хотите добавить разрешения для пользователя или для группы?\n1) Для пользователя\n2) Для группы"
read answer
case $answer in
	"1")
		read -e -p "Имя пользователя: " username;
		if [[ ! -z "$(cat /etc/passwd | cut -d':' -f1 | grep "$username")" ]]
		then
			read -e -p "Права пользователя [rwx]: " permissions;
			if [[ ! -z "$(echo "$permissions" | grep --extended-regexp '^[r-]?[w-]?[x-]?$')" ]]
			then 
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer
					case $answer in
						"1")
							setfacl -m --recursive "u:$username:$permissions" "$filename"
							;;
						"2")
							setfacl -m "u:$username:$permissions" "$filename"
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
		;;
	"2")
		read -e -p "Имя группы: " groupname;
		if [[ ! -z "$(cat /etc/group | cut -d':' -f1 | grep "$groupname")" ]]
		then
			read -e -p "Права [rwx]: " permissions;
			if [[ ! -z "$(echo "$permissions" | grep --extended-regexp '^[r-]?[w-]?[x-]?$')" ]]
			then
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer
					case $answer in
						"1")
							setfacl -m --recursive "g:$groupname:$permissions" "$filename"
							;;
						"2")	
							setfacl -m "g:$groupname:$permissions" "$filename"
							;;
						*)
							echo "Ошибка!"
						;;
					esac
				else
					setfacl -m "g:$groupname:$permissions" "$filename"
				fi
			else
				echo "Права указаны неверно!"
			fi
		else
			echo "Нет такой группы!"
		fi
		;;
	*)
		echo "Ошибка!"
		;;
	esac
}

act1_3_2 () {
echo -e "Удалить запись для пользвователя или для группы?\n1) Для пользователя\n2) Для группы"
read answer
case $answer in
        "1")
		read -e -p "Имя пользователя: " username;
		if [[ ! -z "$(getfacl "$filename" | grep -v --regexp='^#' | grep --regexp='^user'|cut -d':' -f2 | grep "$username")" ]]
		then
			if [[ -d "$filename" ]]
			then
				echo -e "Вы хотите удалить записи для всех подкаталогов и файлов данного каталога?\n1) Да\n2) Нет"
				read answer
				case $answer in
					"1")
						setfacl -x --recursive "u:$username" "$filename"
						;;
					"2")
						setfacl -x "u:$username" "$filename"
						;;
					*)
						echo "Ошибка!"
						;;
				esac
			else
				setfacl -x "u:$username" "$filename"
			fi
		else
			echo "Нет записей для этого пользователя!"
		fi
		;;
	"2")
		read -e -p "Имя группы: " groupname;
		if [[ ! -z "$(getfacl testfile | grep -v --regexp='^#' | grep --regexp='^group'|cut -d':' -f2 | grep "$groupname")" ]]
		then
			if [[ -d "$filename" ]]
			then
				echo -e "Вы хотите удалить записи всех для подкаталогов и файлов данного каталога?\n1) Да\n2) Нет"
				read answer
				case $answer in
					"1")
						setfacl -x --recursive "g:$groupname" "$filename"
						;;
					"2")
						setfacl -x "g:$groupname" "$filename"
						;;
					*)
						echo "Ошибка!"
					;;
				esac
			else
				setfacl -x "g:$groupname" "$filename"
			fi
		else
			echo "Нет записей для этой группы!"
		fi
		;;
	*)
		echo "Ошибка!"
		;;
	esac
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
	                        act1_3_1;
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
