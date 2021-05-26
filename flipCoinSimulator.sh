#! /bin/bash -x

countHead=0
countTail=0
i=1

while [ "$i" -le 21 ];
do
	flipCoin=$(( RANDOM%2 ))
	if [ $flipCoin -eq 1 ]
	then 	
		countHead=$(($countHead+1))
	else	
		countTail=$(($countTail+1))
	fi
	if(($i==21))
	then
		if (( $countHead>=21 ))
		then
			echo "Number that reached the count of 21 maximum times is HEAD"
		elif (( $countTail>=21 ))
		then
			echo "Number that reached the count of 21 maximum times is TAIL"
		elif (( $countHead>=21 && $countTail>=21 ))
		then
			echo "Its a tie"
			diff=$(($countHead-$countTail))
			if(($diff==2))
			then
				echo "Game over!"
			else
				i=0
				continue
			fi
		else
			i=0
			continue
		fi
	fi
	let "i += 1"
done