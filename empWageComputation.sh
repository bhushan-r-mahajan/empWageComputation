echo "Welcome"
attendance=$((RANDOM %2 ))
if [ $attendance -eq 0 ]
then
	echo "Employee is Absent"
elif [ $attendance -eq 1 ]
then
	echo "Employee is Present"
fi
