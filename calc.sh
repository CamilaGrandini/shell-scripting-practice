#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
# Then, capture the user selection.
# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.

echo "Hello!! Welcome to the virtual calculator!!!"
end=1
while [ 1 -eq $end ];
do

echo " try adding or subtracting two numbers:"
echo " if you wanna sum numbers, then type 'add'"
echo " if you wanna subtract, then type 'sub'"
read operation
case $operation in
	"add"|"+")
		echo "Summing the numbers"
		end=1
while [ 1 -eq $end ];
do
echo "Firstly, type the first number and hit enter"
read fnumber
echo "Secondly, type the second number and hit enter"
read snumber
let total=$fnumber+$snumber
echo "result is $total"
echo "More math for today?"
echo " Hit 1 to continue summing numbers or any number to exit"

read end
done

		;;
	"subtract"|"s"|"sub")
		echo "Ok, subtracting the numbers"
		end=1
while [ 1 -eq $end ];
do
echo "Firstly, type the first number and hit enter"
read fnumber
echo "Secondly, type the second number and hit enter"
read snumber
let total=$fnumber-$snumber
echo "result is $total"
echo "More math for today?"
echo " Hit 1 to continue subtracting numbers or any number to exit"

read end
done

		;;
	*)
		echo "Whoops, I only know how to sum or subtract :D" >&2
		;;
esac
echo " Cool, huh? Hit 1 if you wanna go back or any other number to exit"
read end
done

