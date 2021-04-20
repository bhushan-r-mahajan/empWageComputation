echo "Welcome"

attendance=$((RANDOM %3 ))
wagePerHr=20
fullTime=8
partTime=4

if [ $attendance -eq 0 ]
then
	echo "Employee is Absent"
elif [ $attendance -eq 1 ]
then
	echo "Employee is Full time"
	dailyWage=$(($wagePerHr * $fullTime ))
	echo "Employee wage is "$dailyWage
elif [ $attendance -eq 2 ]
then
	echo "Employee is Part time"
	dailyWage=$(( $wagePerHr * $partTime ))
	echo "Employee wage is "$dailyWage
fi

