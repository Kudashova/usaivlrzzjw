#!/bin/bash
act1_1_1 () {
menu="Изменить права доступа: \n 1. Добавить права записи\n 2. Убрать права записи\n 3. Добавить права чтения\n 4. Удалить права чтения\n 5. Добавить право исполнения\n 6. Удалить права исполнения\n 7. Добавить бит SUID\n 8. Удалить бит SUID \n q) Return back"
echo -e "$menu"
while true;
do
 read task
 case $task in
 "1")
 if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R u+w $filename
   ;;
   "2")
   chmod u+w  $filename
   ;;
   esac
 else
   chmod u+w  $filename
fi
 ;;
 "2")
 if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R u-w $filename
   ;;
   "2")
   chmod u-w  $filename
   ;;
   esac
 else
   chmod u-w  $filename
fi
 ;;
 "3")
 if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R u+r $filename
   ;;
   "2")
   chmod u+r  $filename
   ;;
   esac
 else
   chmod u+r  $filename
fi
 ;;
 "4")
  if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R u-r $filename
   ;;
   "2")
   chmod u-r  $filename
   ;;
   esac
 else
   chmod u-r  $filename
fi
 ;;
 "5")
  if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R u+x $filename
   ;;
   "2")
   chmod u+x  $filename
   ;;
   esac
 else
   chmod u+x  $filename
fi
 ;;
 "6")
  if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R u-x $filename
   ;;
   "2")
   chmod u-x  $filename
   ;;
   esac
 else
   chmod u-x  $filename
fi
 ;;
 "7")
  if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R u+s $filename
   ;;
   "2")
   chmod u+s  $filename
   ;;
   esac
 else
   chmod u+s  $filename
fi
 ;;
 "8")
  if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R u-s $filename
   ;;
   "2")
   chmod u-s  $filename
   ;;
   esac
 else
   chmod u-s  $filename
fi
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
menu="Изменить права доступа: \n 1. Добавить права записи\n 2. Убрать права записи\n 3. Добавить права чтения\n 4. Удалить права чтения\n 5. Добавить право исполнения\n 6. Удалить права исполнения\n 7. Добавить бит SUID\n 8. Удалить бит SUID \n q)Return back"
echo -e "$menu"
while true;
do
 read task
 case $task in
 "1")
  if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R g+w $filename
   ;;
   "2")
   chmod g+w  $filename
   ;;
   esac
 else
   chmod g+w  $filename
fi
 ;;
 "2")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R g-w $filename
   ;;
   "2")
   chmod g-w  $filename
   ;;
   esac
 else
   chmod g-w  $filename
fi
 ;;
 "3")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R g+r $filename
   ;;
   "2")
   chmod g+r  $filename
   ;;
   esac
 else
   chmod g+r  $filename
fi
 ;;
 "4")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R g-r $filename
   ;;
   "2")
   chmod g-r  $filename
   ;;
   esac
 else
   chmod g-r  $filename
fi
 ;;
 "5")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R g+x $filename
   ;;
   "2")
   chmod g+x  $filename
   ;;
   esac
 else
   chmod g+x  $filename
fi
 ;;
 "6")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R g-x $filename
   ;;
   "2")
   chmod g-x  $filename
   ;;
   esac
 else
   chmod g-x  $filename
fi
 ;;
 "7")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R g+s $filename
   ;;
   "2")
   chmod g+s  $filename
   ;;
   esac
 else
   chmod g+s  $filename
fi
 ;;
 "8")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R g-s $filename
   ;;
   "2")
   chmod g-s  $filename
   ;;
   esac
 else
   chmod g-s  $filename
fi
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
menu="Изменить права доступа: \n 1. Добавить права записи\n 2. Убрать права записи\n 3. Добавить права чтения\n 4. Удалить права чтения\n 5. Добавить право исполнения\n 6. Удалить права исполнения\n 7. Добавить бит SUID\n 8. Удалить бит SUID \n"
echo -e "$menu"
while true;
do
 read task
 case $task in
 "1")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R o+w $filename
   ;;
   "2")
   chmod o+w  $filename
   ;;
   esac
 else
   chmod o+w  $filename
fi
 ;;
 "2")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R o-w $filename
   ;;
   "2")
   chmod o-w  $filename
   ;;
   esac
 else
   chmod o-w  $filename
fi
 ;;
 "3")
    if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R o+r $filename
   ;;
   "2")
   chmod o+r  $filename
   ;;
   esac
 else
   chmod o+r  $filename
fi
 ;;
 "4")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R o-r $filename
   ;;
   "2")
   chmod o-r  $filename
   ;;
   esac
 else
   chmod o-r  $filename
fi
 ;;
 "5")
    if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R o+x $filename
   ;;
   "2")
   chmod o+x  $filename
   ;;
   esac
 else
   chmod o+x  $filename
fi
 ;;
 "6")
    if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R o-x $filename
   ;;
   "2")
   chmod o-x  $filename
   ;;
   esac
 else
   chmod o-x  $filename
fi
 ;;
 "7")
    if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R o+s $filename
   ;;
   "2")
   chmod o+s  $filename
   ;;
   esac
 else
   chmod o+s  $filename
fi
 ;;
 "8")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R o-s $filename
   ;;
   "2")
   chmod o-s $filename
   ;;
   esac
 else
   chmod o-s  $filename
fi
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
menu="Изменить права доступа: \n 1. Добавить права записи\n 2. Убрать права записи\n 3. Добавить права чтения\n 4. Удалить права чтения\n 5. Добавить право исполнения\n 6. Удалить права исполнения\n 7. Добавить бит SUID\n 8. Удалить бит SUID \n"
echo -e "$menu"
while true;
do
 read task
 case $task in
 "1")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R a+w $filename
   ;;
   "2")
   chmod a+w  $filename
   ;;
   esac
 else
   chmod a+w  $filename
fi
 ;;
 "2")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R a-w $filename
   ;;
   "2")
   chmod a-w  $filename
   ;;
   esac
 else
   chmod a-w  $filename
fi
 ;;
 "3")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R a+r $filename
   ;;
   "2")
   chmod a+r  $filename
   ;;
   esac
 else
   chmod a+r  $filename
fi
 ;;
 "4")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R a-r $filename
   ;;
   "2")
   chmod a-r  $filename
   ;;
   esac
 else
   chmod a-r  $filename
fi
 ;;
 "5")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R a+x $filename
   ;;
   "2")
   chmod a+x  $filename
   ;;
   esac
 else
   chmod a+x  $filename
fi
 ;;
 "6")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R a-x $filename
   ;;
   "2")
   chmod a-x  $filename
   ;;
   esac
 else
   chmod a-x $filename
fi
 ;;
 "7")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R a+s $filename
   ;;
   "2")
   chmod a+s  $filename
   ;;
   esac
 else
   chmod a+s  $filename
fi
 ;;
 "8")
   if [[ -d $filename ]]
 then
   echo "Вы хотите изменить права доступа всем папкам и файлам каталога? 1) Да 2) Нет"
   read answer 
   case $answer in
   "1")
   chmod -R a-s $filename
   ;;
   "2")
   chmod a-s  $filename
   ;;
   esac
 else
   chmod a-s  $filename
fi
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
