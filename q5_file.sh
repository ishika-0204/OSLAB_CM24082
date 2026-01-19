#!/bin/bash

echo "------ FILE MENU ------"
echo "1. Create file"
echo "2. Write content in file"
echo "3. Append content to file"
echo "4. Delete file content"
echo "-----------------------"

echo "Enter your choice:"
read ch

case $ch in
1)
  echo "Enter filename to create:"
  read fname
  touch $fname
  echo "File '$fname' created."
  ;;
2)
  echo "Enter filename to write content:"
  read fname
  echo "Enter content (Ctrl+D to finish):"
  cat > $fname
  echo "Content written to '$fname'."
  ;;
3)
  echo "Enter filename to append content:"
  read fname
  echo "Enter content to append (Ctrl+D to finish):"
  cat >> $fname
  echo "Content appended to '$fname'."
  ;;
4)
  echo "Enter filename to delete content:"
  read fname
  > $fname
  echo "Content of '$fname' deleted."
  ;;
*)
  echo "Invalid choice"
  ;;
esac
