while ((1))
do
echo "O0"
for ((i = 1; i < 11; i++)) {
	./bin/combine_O0 $i
}

echo "O1"
for ((i = 1; i < 11; i++)) {
	./bin/combine_O1 $i
}
done
