#!/usr/bin/env bash

greetings="hello!"

# echo $greetings World \(Planet\)!
# echo '$greetings World (Planet)!'
# echo "$greetings World (Planet)!"


### Variables
x=World!
y="World!"
z='World!'

#echo $x
#echo $y
#echo $x


### Adding attributes to variables
declare -i d=123  # d is an integer
declare -r e=456  # e is read-only
declare -l f="LOLCats"
declare -u g="LOLCats"

#echo $f
#echo $g


### Built-in variables
#echo $0
#echo "Home: $HOME"
#echo "Host: $HOSTNAME"
#echo "Bash: $BASH_VERSION"
#echo "PWD: $PWD"
#echo "Machine type: $MACHTYPE"
#echo "Bash session is running for $SECONDS seconds"


### Commands substitution
command1=$(ls)
command2=`ls`

#echo $command2
#echo "Hello, `whoami`"


### Arithmetic operations
num1=2
num2=$((num1**3))

#echo $num2
#echo $((--num2))
#echo $((++num2))
#((num2++))
#echo $num2
#echo $((num2 += 5))  # -= *= /= %=

### floating point numbers
#echo 1/3 | bc -l


### Comparisons
#[[ "cat" == "cat" ]]
#echo "Failure: $?"
#
#[[ "cat" == "dog" ]]
#echo "Failure: $?"

# -lt
# -gt
# -le
# -ge
# -eq
# -ne
# && || !
#[[ 20 -gt 100 ]]
#echo "Failure: $?"
#
#if [[ 20 -gt 100 ]]; then
#    echo "True!"
#else
#    echo "False!"
#fi
#
## -z = Is null?
## -n = Is not null?
#if [[ -n "a string" ]]; then
#    echo "I's not null!"
#else
#    echo "It's null!"
#fi


#### Strings
#str1="Hello"
#str2="World"
#str3=$str1$str2
#
#echo $str3
#
## String length
#echo ${#str1}
#
## Slicing strings
#str4=${str3:3:2}  # :start:how many
#
#echo $str4
#
## replacing
#fruits="apple banana banana cherry"
#echo ${fruits/banana/durian}
#echo ${fruits//banana/durian}
#
#echo ${fruits/#apple/durian}  # replace on a beginning of a string
#echo ${fruits/#banana/durian}  # replace on a beginning of a string
#
#echo ${fruits/%cherry/durian}  # replace on an end of a string
#echo ${fruits/%banana/durian}  # replace on an end of a string
#
#echo ${fruits/c*/durian}
#
#printf "Name:\t%s\nID:\t%04d" "Scott" "12"


### date
today=$(date +"%Y-%m-%d")
time=$(date +"%H:%M:%S")
printf -v formatted "Current User:\t%s\nDate:\t\t\t%s @ %s\n" $USER $today $time
echo "$formatted"


#### Arrays
#array_a=()
#
#fruits=("apple" "banana" "cherry")
#fruits[5]="kiwi"
#fruits+=("mango")
#
## echoing whole array
#echo ${fruits[@]}
#echo ${fruits[@]: -1}
#echo ${fruits[@]: 1:2}
#
#printf "\n\n"
#
#for i in {0..10}; do
#    fruit=${fruits[i]}
#    if [[ -z $fruit ]]; then
#        echo "null"
#    else
#        echo $fruit
#    fi
#done
#
#
#for fruit in "${fruits[@]}"; do
#    echo "Fruit: $fruit"
#done


### Associative Array
declare -A myarray
myarray[color]=blue
myarray["office building"]="HQ West"

echo ${myarray["office building"]} is ${myarray[color]}

declare -A aa
aa=(
    [name]="John"
    [lastname]="Doe"
    [age]=35
)

echo ${aa[@]}

for item in ${aa[@]}; do
    echo $item
done


### Files
echo "Some text" > file.txt

# to delete content of a file
echo > file.txt


### Loops
#for num in {01..10}; do
#    echo "Number: $num"
#done