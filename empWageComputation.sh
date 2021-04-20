echo "Welcome"

attendance=$((RANDOM %2 ))
wagePerHr=20
fullDay=8

if [ $attendance -eq 0 ]
then
	echo "Employee is Absent"
elif [ $attendance -eq 1 ]
then
	echo "Employee is Present"
	dailyWage=$(($wagePerHr * $fullDay ))
	echo "Employee wage "$dailyWage
fi

