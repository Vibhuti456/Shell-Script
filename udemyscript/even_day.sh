# Create a script that will print "Even Day" if current date is an even number ?

#!/bin/bash

DATE=$(date) 
echo "Today's date is: ${DATE}."

format=$(date | awk '{print $3}') 
echo "${format}"

if (( $format % 2 == 0 )); then
	echo "Date is even"
else
	echo "Date is odd"
fi 



