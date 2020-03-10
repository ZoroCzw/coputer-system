#!/bin/bash

if [ $# != 2 ]; then
echo "input error"
exit 1;
fi

file_name=$1
On=$2

src_name="./src/"$file_name".c"
objdump_ass_name="./ass/objdump_"$file_name"_"$On".s"
gcc_ass_name="./ass/gcc_"$file_name"_"$On".s"
obj_name="./obj/"$file_name"_"$On".o"


gcc -c -$On -Wall $src_name -o $obj_name
objdump -d $obj_name > $objdump_ass_name

gcc -S -$On -Wall $src_name -o $gcc_ass_name
