#!/usr/bin/env bash 

# Comment
echo "Hello world"

myName="Wojtek"

echo "$myName"

# Declaring a constant
declare -r NUM1=5

num2=4

num3=$((NUM1+num2))
num4=$((NUM1-num2))
num5=$((NUM1*num2))
num6=$((NUM1/num2))

echo "5 + 4 = $num3"
echo "5 - 4 = $num4"
echo "5 * 4 = $num5"
echo "5 / 4 = $num6"

echo $((5**2))
echo $(( 5%4 ))

rand=5
let rand+=4
echo "$rand"

echo "rand++ = $(( rand++ ))"
echo "++rand = $(( ++rand ))"
echo "rand-- = $(( rand-- ))"
echo "--rand = $(( --rand ))"

num7=1.2
num8=3.4
num9=$(python -c "print $num7+$num8")
echo "counting with python: $num9"

# Python's expressions in Bash Script
echo "python's list comprehensions:"
echo $(python3 -c "print([num**2 for num in range(10)])")

cat<< END
This text
prints on
many lines
END


