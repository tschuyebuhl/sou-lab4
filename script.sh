#!/bin/bash

#Napisać skrypt, który na podstawie logów serwera apache2 będzie generował serię wykresów obrazujących, ile zdarzeń danego typu występowało w określonym miesiącu.
#Plik zawierający logi powinien być dołączony do zadania.
#Student powinien wybrać przynajmniej 5 zdarzeń, dla których skrypt będzie generował wykresy.
#Zaimplementować filtrowanie miesięcy na podstawie wartości podawanych w parametrach pozycyjnych. Rozwiązanie musi zawierać funkcje.

#funkcja bedzie operowala na tablicy plusików dla danego zdarzenia 
#na podstawie miesiaca i wystapienia danego wydarzenia, dodawac plusiki
createGraph() {
	case $1 in 
		${months[0]})
			echo "miesiac: $month"
			;;
		${months[1]})
			echo "miesiac: $month"
			;;
		${months[2]})
			echo "miesiac: $month"
			;;
		${months[3]})
			echo "miesiac: $month"
			;;
		${months[4]})
			echo "miesiac: $month"
			;;
		${months[5]})
			echo "miesiac: $month"
			;;
		${months[6]})
			echo "miesiac: $month"
			;;
		${months[7]})
			echo "miesiac: $month"
			;;
		${months[8]})
			echo "miesiac: $month"
			;;
		${months[9]})
			echo "miesiac: $month"
			;;
		${months[10]})
			echo "miesiac: $month"
			;;
		${months[11]})
			echo "miesiac: $month"
			;;
	esac
}	
#typy zdarzen do rozgraniczenia:
# ip
months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)
events=()

while read -r line; do 
	ip=`echo $line | awk '{print $1}'`
	month=`echo $line | awk '{print $4}' | awk -F '/' '{print $2}' `
	reqtype=`echo $line | awk '{print $6}' | tr -d "\"" `
	result=`echo $line | awk '{print $9}'`
	size=`echo $line | awk '{print $10}'`
	echo $ip
	echo $month
	echo $reqtype
	echo $result
	echo $size
	createGraph $month
	
done < oneline
