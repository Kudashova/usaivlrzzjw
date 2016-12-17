#!/bin/bash
act1_1_1 () {
echo "Selected option act1_1_1";
read filename
menu="Изменить права доступа: \n 1. Добавить права записи\n 2. Убрать права записи\n 3. Добавить права чтения\n 4. Удалить права чтения\n 5. Добавить право исполнения\n 6. Удалить права исполнения\n 7. Добавить бит SUID\n 8. Удалить бит SUID \n q) Return back"
echo -e "$menu"
while true;
do
 read task
 case $task in
 "1")
 chmod u+w  $filename
 ;;
 "2")
 chmod u-w  $filename
 ;;
 "3")
 chmod u+r  $filename
 ;;
 "4")
 chmod u-r  $filename
 ;;
 "5")
 chmod u+x $filename
 ;;
 "6")
 chmod u-x $filename
 ;;
 "7")
 chmod u+s $filename
 ;;
 "8")
 chmod u-s $filename
 ;;
 "q")
 return
 ;;
 *)
 echo "Try again"
 ;;
 esac
 done
 }

act1_1_2 () {
echo "Selected option act1_1_2";
read filename

menu="Изменить права доступа: \n 1. Добавить права записи\n 2. Убрать права записи\n 3. Добавить права чтения\n 4. Удалить права чтения\n 5. Добавить право исполнения\n 6. Удалить права исполнения\n 7. Добавить бит SUID\n 8. Удалить бит SUID \n q)Return back"
echo -e "$menu"
while true;
do
 read task
 case $task in
 "1")
 chmod g+w  $filename
 ;;
 "2")
 chmod g-w  $filename
 ;;
 "3")
 chmod g+r  $filename
 ;;
 "4")
 chmod g-r  $filename
 ;;
 "5")
 chmod g+x $filename
 ;;
 "6")
 chmod g-x $filename
 ;;
 "7")
 chmod g+s $filename
 ;;
 "8")
 chmod g-s $filename
 ;;
 "q")
 return
 ;;
 *)
 echo "Try again"
 ;;
 esac
 done
}

act1_1_3 () {
echo "Selected option act1_1_3";
read filename
menu="Изменить права доступа: \n 1. Добавить права записи\n 2. Убрать права записи\n 3. Добавить права чтения\n 4. Удалить права чтения\n 5. Добавить право исполнения\n 6. Удалить права исполнения\n 7. Добавить бит SUID\n 8. Удалить бит SUID \n"
echo -e "$menu"
while true;
do
 read task
 case $task in
 "1")
 chmod o+w  $filename
 ;;
 "2")
 chmod o-w  $filename
 ;;
 "3")
 chmod o+r  $filename
 ;;
 "4")
 chmod o-r  $filename
 ;;
 "5")
 chmod o+x $filename
 ;;
 "6")
 chmod o-x $filename
 ;;
 "7")
 chmod o+s $filename
 ;;
 "8")
 chmod o-s $filename
 ;;
 "q")
 return
 ;;
 *)
 echo "Try again"
 ;;
 esac
 done
}

act1_1_4 () {
echo "Selected option act1_1_4";
read filename
menu="Изменить права доступа: \n 1. Добавить права записи\n 2. Убрать права записи\n 3. Добавить права чтения\n 4. Удалить права чтения\n 5. Добавить право исполнения\n 6. Удалить права исполнения\n 7. Добавить бит SUID\n 8. Удалить бит SUID \n"
echo -e "$menu"
while true;
do
 read task
 case $task in
 "1")
 chmod a+w  $filename
 ;;
 "2")
 chmod a-w  $filename
 ;;
 "3")
 chmod a+r  $filename
 ;;
 "4")
 chmod a-r  $filename
 ;;
 "5")
 chmod a+x $filename
 ;;
 "6")
 chmod a-x $filename
 ;;
 "7")
 chmod a+s $filename
 ;;
 "8")
 chmod a-s $filename
 ;;
 "q")
 return
 ;;
 *)
 echo "Try again"
 ;;
 esac
 done
}

main () {
actionlist1_1="Меню:\n1. Изменить права доступа владельца\n2. Изменить права доступа пользователя\n3. Изменить права доступа группы\n4. Изменить права доступа всех\nq. Вернуться назад"
helpstring1_1="[1..sdsdsd] - выбор пункта для выполнения [q] - выход на уровень выше\n\n$actionlist1_1"
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
