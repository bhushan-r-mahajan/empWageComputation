echo "Welcome"

attendance=$((RANDOM %3 ))
wagePerHr=20
fullTime=1
partTime=2

case $attendance in

$fullTime)
	echo "Employee is Full time"
	empHours=8;;
$partTime)
	echo "Employee is Part time"
	empHours=4;;
*)
   echo "Employee is Absent"
	empHours=0;;
esac
dailyWage=$(( $wagePerHr * $empHours ))
echo "Wage="$dailyWage
