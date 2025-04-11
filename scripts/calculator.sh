#!/bin/bash

echo "Choose an operation:"
select op in Add Subtract Multiply Divide Quit
do
  case $op in
    Add)
      read -p "Enter two numbers: " a b
      echo "Result: $((a + b))"
      ;;
    Subtract)
      read -p "Enter two numbers: " a b
      echo "Result: $((a - b))"
      ;;
    Multiply)
      read -p "Enter two numbers: " a b
      echo "Result: $((a * b))"
      ;;
    Divide)
      read -p "Enter two numbers: " a b
      if [ $b -ne 0 ]; then
        echo "Result: $((a / b))"
      else
        echo "Cannot divide by zero."
      fi
      ;;
    Quit)
      break
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done
