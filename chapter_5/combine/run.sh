#!/bin/bash

repeat=100000
if [ $# == 1 ] ; then
	repeat=$1
fi

echo "O0 +"
./bin/combine_t_O0 1 $repeat 0
./bin/combine_t_O0 2 $repeat 0
./bin/combine_t_O0 3 $repeat 0
./bin/combine_t_O0 4 $repeat 0
./bin/combine_t_O0 5 $repeat 0
./bin/combine_t_O0 6 $repeat 0
./bin/combine_t_O0 7 $repeat 0
./bin/combine_t_O0 8 $repeat 0
echo "O1 +"
./bin/combine_t_O1 1 $repeat 0
./bin/combine_t_O1 2 $repeat 0
./bin/combine_t_O1 3 $repeat 0
./bin/combine_t_O1 4 $repeat 0
./bin/combine_t_O1 5 $repeat 0
./bin/combine_t_O1 6 $repeat 0
./bin/combine_t_O1 7 $repeat 0
./bin/combine_t_O1 8 $repeat 0
echo "O0 *"
./bin/combine_t_O0 1 $repeat 1
./bin/combine_t_O0 2 $repeat 1
./bin/combine_t_O0 3 $repeat 1
./bin/combine_t_O0 4 $repeat 1
./bin/combine_t_O0 5 $repeat 1
./bin/combine_t_O0 6 $repeat 1
./bin/combine_t_O0 7 $repeat 1
./bin/combine_t_O0 8 $repeat 1
echo "O1 *"
./bin/combine_t_O1 1 $repeat 1
./bin/combine_t_O1 2 $repeat 1
./bin/combine_t_O1 3 $repeat 1
./bin/combine_t_O1 4 $repeat 1
./bin/combine_t_O1 5 $repeat 1
./bin/combine_t_O1 6 $repeat 1
./bin/combine_t_O1 7 $repeat 1
./bin/combine_t_O1 8 $repeat 1
