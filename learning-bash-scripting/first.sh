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


#### date
#today=$(date +"%Y-%m-%d")
#time=$(date +"%H:%M:%S")
#printf -v formatted "Current User:\t%s\nDate:\t\t\t%s @ %s\n" $USER $today $time
#echo "$formatted"


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


#### Associative Array
#declare -A myarray
#myarray[color]=blue
#myarray["office building"]="HQ West"
#
#echo ${myarray["office building"]} is ${myarray[color]}
#
#declare -A aa
#aa=(
#    [name]="John"
#    [lastname]="Doe"
#    [age]=35
#)
#
#echo ${aa[@]}
#
#for item in ${aa[@]}; do
#    echo $item
#done


#### Files
#echo "Some text" > file.txt
#
## to delete content of a file
##echo > file.txt
#
#echo "Some more text" >> file.txt
#
## reading from a file
#i=1
#while read f; do
#    echo "Line $i: $f"
#    ((i++))
#done < file.txt
#
#
## using ftp
#ftp -n < ftp.txt

# cat << ArbitraryDelimiter
# This is
# exemplary
# multiline text
# ArbitraryDelimiter
#
#ftp -n <<- DoneWithTheUpdate
#    open mirrors.xmission.com
#    user anonymous nothinghere
#    ascii
#    cd gutenberg
#    get GUTINDEX.01
#    bye
#DoneWithTheUpdate


### If statement
#a=2
#if [[ $a -gt 4 ]]; then
#    echo $a is greater than 4!
#else
#    echo $a is not greater than 4!
#fi
#
## If with Regex
#str="This is my #1 string"
#if [[ $str =~ ^.*[[:space:]]#[0-9].*$ ]]; then
#    echo "There are numbers!"
#else
#    echo "There are no numbers!"
#fi


### Loops
### While
#i=0
#while [[ $i -le 10 ]]; do
#    echo "Num: $i"
#    ((i++))
#done
#
#
### Until
#i=0
#until [[ $i -ge 10 ]]; do
#    echo "Num: $i"
#    ((i++))
#done
#
### For
#for (( i=0; i<=10; i++ )); do
#    echo "Number: $i"
#done

## For Each
#for i in 1 2 3; do
#    echo "Num: $i"
#done

# start..stop..step
#for num in {01..10..2}; do
#    echo "Number: $num"
#done

## Looping through arrays
#a=("banana" "apple" "cherry")
#for i in ${a[@]}; do
#    echo $i
#done

## Looping through associative array
#declare -A aa
#aa=(
#    [name]="John"
#    [last name]="Doe"
#    [age]=35
#)
#
## Quote helps in case of white space in keys
#for k in "${!aa[@]}"; do
#    echo "$k: ${aa[$k]}"
#done

## Commands substitution in for loops
#for i in $(echo ../*); do
#    echo "line: $i"
#done


#### Case
#a="bird"
#
#case $a in
#    cat) echo "Feline";;
#    dog|puppy) echo "Canine";;
#    *) echo "No match!";;
#esac


### Functions
function greet {
    echo "Hi there!"
}

greet


function square {
    echo $(( $1 * $1 ))
}

square 3
