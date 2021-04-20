

echo "Welcome"

wagePerHr=20
totalWorkingDays=20
monthlyWage=0
fullTime=1
partTime=2
absent=0

for (( day=1; day<=$totalWorkingDays; day++ ))
do

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
	$absent)
		echo $attendance
   	echo "Employee is Absent"
		empHours=0
		;;
	esac
	dailyWage=$(( $wagePerHr * $empHours ))
	monthlyWage=$(($monthlyWage + $dailyWage))
done

echo "Monthly Wage="$monthlyWage
