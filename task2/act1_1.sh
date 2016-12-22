#!/bin/bash
act1_1_1 () {
	menu1_1_1="Изменить права доступа:\n1. Добавить права записи\n2. Убрать права записи\n3. Добавить права чтения\n4. Удалить права чтения\n5. Добавить право исполнения\n6. Удалить права исполнения\n7. Добавить бит SUID\n8. Удалить бит SUID\nq) Вернуться назад"
	while true;
	do
		echo -e "$menu1_1_1"
		read task
		case $task in
			"1")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R u+w "$filename"
							;;
						"2")
							chmod u+w  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;
							
					esac
				else
					chmod u+w  "$filename"
				fi
				;;
			"2")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R u-w "$filename"
							;;
						"2")
							chmod u-w  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;							
					esac
				else
					chmod u-w  "$filename"
				fi
				;;
			"3")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R u+r "$filename"
							;;
						"2")
							chmod u+r  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;							
					esac
				else
					chmod u+r  "$filename"
				fi
				;;
			"4")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R u-r "$filename"
							;;
						"2")
							chmod u-r  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;							
					esac
				else
					chmod u-r  "$filename"
				fi
				;;
			"5")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R u+x "$filename"
							;;
						"2")
							chmod u+x  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;							
					esac
				else
					chmod u+x  "$filename"
				fi
				;;
			"6")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R u-x "$filename"
							;;
						"2")
							chmod u-x  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;							
					esac
				else
				chmod u-x  "$filename"
				fi
				;;
			"7")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R u+s "$filename"
							;;
						"2")
							chmod u+s  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;							
					esac
				else
					chmod u+s  "$filename"
				fi
				;;
			"8")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R u-s "$filename"
							;;
						"2")
							chmod u-s  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;							
					esac
				else
					chmod u-s  "$filename"
				fi
				;;
			"q")
				return
				;;
			*)
				echo "Ошибка!"
				;;
		esac
	done
}

act1_1_2 () {
	menu1_1_2="Изменить права доступа:\n1. Добавить права записи\n2. Убрать права записи\n3. Добавить права чтения\n4. Удалить права чтения\n5. Добавить право исполнения\n6. Удалить права исполнения\n7. Добавить бит SUID\n8. Удалить бит SUID\nq) Вернуться назад"
	while true;
	do
		echo -e "$menu1_1_2"
		read task
		case $task in
			"1")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R g+w "$filename"
							;;
						"2")
							chmod g+w  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;
					esac
				else
					chmod g+w  "$filename"
				fi
			;;
			"2")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R g-w "$filename"
							;;
						"2")
							chmod g-w  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;
						esac
				else
					chmod g-w  "$filename"
				fi
			;;
			"3")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R g+r "$filename"
							;;
						"2")
							chmod g+r  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;
					esac
				else
					chmod g+r  "$filename"
				fi
			;;
			"4")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
					read answer 
					case $answer in
						"1")
							chmod -R g-r "$filename"
							;;
						"2")
							chmod g-r  "$filename"
							;;
						*)
							echo "Ошибка!"
							;;
						esac
				else
					chmod g-r  "$filename"
				fi
				;;
			"5")
				if [[ -d "$filename" ]]
				then
					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R g+x "$filename"
   							;;
   						"2")
   							chmod g+x  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;
   						esac
 				else
   					chmod g+x  "$filename"
				fi
 			;;
 			"6")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R g-x "$filename"
   							;;
   						"2")
   							chmod g-x  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod g-x  "$filename"
				fi
 			;;
 			"7")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R g+s "$filename"
   							;;
   						"2")
   							chmod g+s  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod g+s  "$filename"
				fi
 				;;
 			"8")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R g-s "$filename"
   							;;
   						"2")
   							chmod g-s  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod g-s  "$filename"
				fi
 				;;
 			"q")
 				return
 				;;
 			*)
 				echo "Ошибка!"
 				;;
 			esac
 		done
}

act1_1_3 () {
	menu1_1_3="Изменить права доступа:\n1. Добавить права записи\n2. Убрать права записи\n3. Добавить права чтения\n4. Удалить права чтения\n5. Добавить право исполнения\n6. Удалить права исполнения\n7. Добавить бит SUID\n8. Удалить бит SUID\nq) Вернуться назад"
	while true;
	do
		echo -e "$menu1_1_3"
 		read task
 		case $task in
 			"1")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R o+w "$filename"
   							;;
   						"2")
   							chmod o+w  "$filename"
  							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod o+w  "$filename"
				fi
 				;;
 			"2")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R o-w "$filename"
   							;;
   						"2")
   							chmod o-w  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod o-w  "$filename"
				fi
 				;;
 			"3")
    				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R o+r "$filename"
   							;;
   						"2")
   							chmod o+r  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod o+r  "$filename"
				fi
 				;;
 			"4")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R o-r "$filename"
   							;;
   						"2")
   							chmod o-r  "$filename"
  							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod o-r  "$filename"
				fi
 				;;
 			"5")
    				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R o+x "$filename"
   							;;
   						"2")
   							chmod o+x  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod o+x  "$filename"
				fi
 				;;
 			"6")
    				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R o-x "$filename"
   							;;
   						"2")
   							chmod o-x  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod o-x  "$filename"
				fi
 				;;
 			"7")
    				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R o+s "$filename"
   							;;
   						"2")
   							chmod o+s  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   						chmod o+s  "$filename"
				fi
 				;;
 			"8")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
  			 			"1")
   							chmod -R o-s "$filename"
   							;;
   						"2")
							chmod o-s "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod o-s  "$filename"
				fi
 				;;
			"q")
 				return
 				;;
 			*)
 				echo "Ошибка!"
 				;;
 			esac
 		done
}

act1_1_4 () {
	menu1_1_4="Изменить права доступа:\n1. Добавить права записи\n2. Убрать права записи\n3. Добавить права чтения\n4. Удалить права чтения\n5. Добавить право исполнения\n6. Удалить права исполнения\n7. Добавить бит SUID\n8. Удалить бит SUID\nq) Вернуться назад"
	while true;
	do
		echo -e "$menu1_1_4"
 		read task
 		case $task in
 			"1")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R a+w "$filename"
   							;;
   						"2")
   							chmod a+w  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod a+w  "$filename"
				fi
 				;;
 			"2")
   				if [[ -d "$filename" ]]
 				then
  					 echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R a-w "$filename"
   							;;
   						"2")
   							chmod a-w  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod a-w  "$filename"
				fi
 				;;
 			"3")
   				if [[ -d "$filename" ]]
 				then
  					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R a+r "$filename"
   							;;
   						"2")
   							chmod a+r  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 					else
   						chmod a+r  "$filename"
					fi
 					;;
 			"4")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R a-r "$filename"
   							;;
   						"2")
   							chmod a-r  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod a-r  "$filename"
				fi
 				;;
 			"5")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
  							chmod -R a+x "$filename"
   							;;
   						"2")
   							chmod a+x  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod a+x  "$filename"
				fi
 				;;
 			"6")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R a-x "$filename"
   							;;
   						"2")
   							chmod a-x  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod a-x "$filename"
				fi
 				;;
 			"7")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R a+s "$filename"
   							;;
   						"2")
   							chmod a+s  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod a+s  "$filename"
				fi
 				;;
 			"8")
   				if [[ -d "$filename" ]]
 				then
   					echo -e "Вы хотите изменить права доступа всем папкам и файлам каталога?\n1) Да\n2) Нет"
   					read answer 
   					case $answer in
   						"1")
   							chmod -R a-s "$filename"
   							;;
   						"2")
   							chmod a-s  "$filename"
   							;;
						*)
							echo "Ошибка!"
							;;   
   						esac
 				else
   					chmod a-s  "$filename"
				fi
 				;;
 			"q")
 				return
 				;;
 			*)
 				echo "Ошибка!"
 				;;
 			esac
 		done
}

main () {
	actionlist1_1="Меню:\n1. Изменить права доступа владельца\n2. Изменить права доступа группы\n3. Изменить права доступа остальных\n4. Изменить права доступа всех\nq. Вернуться назад"
	helpstring1_1="[1..4] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1_1"
	welcome1_1="==================\nВ данном меню можно:\n1) Изменить права доступа владельца; 2)Изменить права доступа пользователя; 3) Изменить права доступа группы; 4) Изменить права доступа всех сразу.\n\n\n$actionlist1_1"
	
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
			"4")
				act1_1_4;
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
