#! /bin/bash
#cars.sh
#Devin Keller

while true;
do
	echo "Press 1 to enter a new car, 2 to display the list of cars, and 3 to quit."
	read userchoice
	case $userchoice in
	1)
		echo "Please enter the year the car was made: " 
		read year
		echo "Please enter the make of the car: "
		read make
		echo "Please enter the model of the car: "
		read model
		cars="$year:$make:$model"
		echo "$cars" >> "My_old_cars"
		echo "Your car has been successfully added to the list."
	;;
	2)
		echo "Here is your list of cars: "
		sort My_old_cars
		
	;;
	3)
		break
	;;
	*)
		echo "Please only enter a number between 1-3."
	;;
	esac
done

echo "Successfully quit." 
