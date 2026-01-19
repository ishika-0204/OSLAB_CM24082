#!/bin/bash

echo "------ MENU ------"
echo "1. Display calendar of current month"
echo "2. Display today's date and time"
echo "3. Display usernames currently logged in"
echo "4. Display your terminal number"
echo "------------------"

echo "Enter your choice:"
read ch

case $ch in
1)
  cal
  ;;
2)
  date
  ;;
3)
  who
  ;;
4)
  tty
  ;;
*)
  echo "Invalid choice"
  ;;
esac
