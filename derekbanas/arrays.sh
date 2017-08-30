#!/usr/bin/env bash

fav_nums=(3.14 2.718 .57721 4.6692)

echo "Pi: ${fav_nums[0]}"

fav_nums[4]=1.618

echo "GR: ${fav_nums[4]}"

fav_nums+=(1 7)

for i in ${fav_nums[*]}; do
	echo $i
done

for i in ${fav_nums[@]}; do
	echo $i
done

echo "Array Length: ${#fav_nums[@]}"
echo "Index 3 Length: ${#fav_nums[3]}"
echo "Index * Length: ${#fav_nums[*]}"
echo "Array: ${fav_nums}"
echo "Array: ${fav_nums}"
echo "Array: ${fav_nums}"

sorted_nums=($(for i in "${fav_nums[@]}"; do
	echo $i;
done | sort))

printf "\n"
for i in ${sorted_nums[*]}; do
	echo $i
done

# delete element from array
unset 'sorted_nums[1]'
unset sorted_nums

