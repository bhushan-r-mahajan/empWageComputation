
echo "Welcome"

wagePerHr=20
totalWorkingDays=20
maxWorkingHours=100


fullTime=1
partTime=2
workingDays=0
workingHours=0

while [[ $workingDays -lt $totalWorkingDays && $workingHours -lt $maxWorkingHours ]]
do
	((workingDays++))
	attendance=$((RANDOM%3))

	case $attendance in

	$fullTime)
		echo $attendance
		echo "Employee is Full time"
		empHours=8
		;;
	$partTime)
		echo $attendance
		echo "Employee is Part time"
		empHours=4
		;;
	*)
		echo $attendance
   	echo "Employee is Absent"
		empHours=0
		;;
	esac
	workingHours=$(( $workingHours + $empHours ))
done
monthlyWage=$(($workingHours * $wagePerHr))
echo "Monthly Wage="$monthlyWage
echo "Total time worked="$workingHours" Hrs"
