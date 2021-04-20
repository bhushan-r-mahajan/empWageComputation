echo "Welcome"

wagePerHour=20
totalWorkingDays=20
maxWorkingHours=100
fullTime=1
partTime=2

workingDays=0
workingHours=0

function workHours(){

	case $1 in

   $fullTime)
      empHours=8
      ;;
   $partTime)
      empHours=4
      ;;
   *)
      empHours=0
      ;;
   esac
echo $empHours

}

function wagearray(){

	local workHrs=$1
	dailyWage=$(( $workHrs * $wagePerHour ))
	echo $dailyWage

}
while [[ $workingDays -lt $totalWorkingDays && $workingHours -lt $maxWorkingHours ]]
do
	((workingDays++))
	empHours="$( workHours $((RANDOM%3)))"
	workingHours=$(( $workingHours + $empHours ))
	empDailyWage[$workingDays]="$( wagearray $empHours)"
done

monthlyWage=$(($workingHours * $wagePerHour))
echo "Monthly Wage="$monthlyWage
echo "Total time worked="$workingHours" Hrs"
echo ${empDailyWage[@]}
