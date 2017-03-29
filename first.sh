#!/bin/bash

VAR1=hi
VAR2="Neevor"
VAR3='Hello world!'
VAR4=3
VAR5=1.2

echo "Hello world!" # Some comment.
echo "Hello $VAR2!"
echo $VAR1, $VAR2, $VAR3, $VAR4, $VAR5

if [ -n "$VAR1" ]; then
    echo "Variable VAR1 is not empty, and it contains: $VAR1";
else
    echo "Variable VAR1 is empty";
fi

VAR6=45

echo "${VAR6}degrees"

VAR7="ls"
VAR8="-lh"
echo "Command test: $VAR7 $VAR8"
$VAR7 $VAR8

echo "Typein your name:"
read IMIE
echo "Your name is: $IMIE"

echo "Podaj pierwszą liczbę:"
read L1
echo "Podaj drugą liczbę:"
read L2
SUMA=$(($L1 + $L2))
echo "Wynik dodawania: $SUMA"
