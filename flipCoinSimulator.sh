#! /bin/bash -x

countHead=0
countTail=0
i=1
read -p "Enter the number of times you want to flip the coin: " number

for((i=1;i<=number;i++))
do
	flipCoin=$(( RANDOM%2 ))
	echo $flipCoin
	if(($flipCoin==1))
	then
		countHead=$(($countHead+1))
		
	else
		countTail=$(($countTail+1))
	fi
done
echo "HEAD occurred: $countHead"
echo "TAIL occurred: $countTail"