gcc -o bin/combine_O0 src/combine.c -O0 -Wall
gcc -o bin/combine_O1 src/combine.c -O1 -Wall
objdump -d bin/combine_O0 > obj/O0_obj
objdump -d bin/combine_O1 > obj/O1_obj
