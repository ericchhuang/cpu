#!/bin/bash

# remove existing circ files
cd my_tests/circ_files
rm CPU-*.circ
cd ../..

# create test .circ files
for file in "$@"; do
	python3 create_test.py "$file"
done

# run tests
chmod +x cpu-part2-user.sh
./cpu-part2-user.sh

# remove circ files
# (not necessary cuz we remove em at the top
# when we run it the next time anyways but yeah)
cd my_tests/circ_files
rm CPU-*.circ
cd ../..
