#!/bin/bash
function user_group_file_change
{
     #проверяем существование файла
     echo "Выберите действие:"
     echo "(1-изменить владельца файла, 2-изменить группу)"
     read do

       
    if [ "$do" == "1" -o "$do" == "2" ]; then
			
     #проверяем существование файла
     echo "Введите имя файла:"
     echo "(если файл находится в другой папке, то введите полный адрес, например: /etc/passwd)"
     read file_name     
     


     if [ "$do" == "1" ]; then
     #проверяем сушествование пользователя 
     echo "Введите имя нового владельца"
     read user_name     
     cut -d: -f1,3 /etc/passwd|sed 's/:/ /g' > lablad
     flag1="0"
     while read line; do
		let b=0;
		for i in $line; do
			let b+=1;
			a[$b]=$i;
		done;
		if [ "${a[1]}" == "$user_name" ]; then
			flag1="1"
		fi;
     done < lablad
     rm -f lablad

     if test -f "$file_name"; then 
           if [ "$flag1" == "1" ]; then 
                chown $user_name $file_name 
                result=$?
	        if [ $result -eq 0 ]
         	then
	        	echo "Успешно."
                else
                        echo "Неуспешно: попробуйте это действие с правами root."
	        fi
           else
               echo "пользователь не найден"
           fi
     else
           echo "файл не найден"
     fi
    fi

    if [ "$do" == "2" ]; then
    #проверяем сушествование группы        
    echo "Введите имя новой группы"
    read group_name
    cut -d: -f1 /etc/group > lablad
    flag2="0"
    while read line; do
		if [ "$line" == "$group_name" ]; then
			flag2="1"
		fi;
    done < lablad
    rm -f lablad

    if test -f "$file_name"; then           
                if [ "$flag2" == "1" ]; then 
                     #echo "все хорошо"
                     chgrp $group_name $file_name 
                     result=$?
	             if [ $result -eq 0 ]
                     then
	        	   echo "Успешно."
                     else
                           echo "Неуспешно: попробуйте это действие с правами root."
	             fi 

                else
                     echo "группа не найдена"
                fi
    else
       echo "файл не найден"
    fi
   fi
   else
      echo "такого действия не существует"
   fi

}
