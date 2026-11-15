#!/bin/bash

echo "===== SHELL CALCULATOR ====="

read -p "Enter first number: " num1
read -p "Enter operator (+ - * /): " operator
read -p "Enter second number: " num2

if ! [[ "$num1" =~ ^-?[0-9]+([.][0-9]+)?$ && "$num2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Please enter valid numbers."
    exit 1
fi

case "$operator" in
    +) awk "BEGIN {print $num1 + $num2}" ;;
    -) awk "BEGIN {print $num1 - $num2}" ;;
    \*) awk "BEGIN {print $num1 * $num2}" ;;
    /)
        if [[ "$num2" == "0" ]]; then
            echo "Cannot divide by zero."
        else
            awk "BEGIN {print $num1 / $num2}"
        fi
        ;;
    *) echo "Unknown operator." ;;
esac

read -p "Press Enter to continue..."