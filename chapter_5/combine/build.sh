#!/bin/bash

gcc -o obj/combine_O0.o -c src/combine.c -O0 -Wall -Iinclude
gcc -o obj/combine_O1.o -c src/combine.c -O1 -Wall -Iinclude
gcc -o ass/gcc_combine_O0.s -S src/combine.c -O0 -Wall -Iinclude
gcc -o ass/gcc_combine_O1.s -S src/combine.c -O1 -Wall -Iinclude
objdump -d obj/combine_O0.o > ass/objdump_combine_O0.s
objdump -d obj/combine_O1.o > ass/objdump_combine_O1.s



gcc -o bin/combine_t_O0 src/combine.c src/call_combine.c -O0 -Wall -Iinclude
gcc -o bin/combine_t_O1 src/combine.c src/call_combine.c -O1 -Wall -Iinclude

objdump -d bin/combine_t_O0 > ass/objdump_combine_t_O0.s
objdump -d bin/combine_t_O1 > ass/objdump_combine_t_O1.s
