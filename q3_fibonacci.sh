#!/bin/bash

echo "Enter value of n:"
read n

a=0
b=1

echo "Fibonacci Series:"
for (( i=1; i<=n; i++ ))
do
  echo -n "$b "
  fn=$((a + b))
  a=$b
  b=$fn
done

echo

