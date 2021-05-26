#! /bin/bash -x

flipCoin=$(( RANDOM%2 ))
if(($flipCoin==1))
then
	echo "It's a HEAD"
else
	echo "It's a TAIL"
fi