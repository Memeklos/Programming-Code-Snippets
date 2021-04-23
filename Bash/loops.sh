#!/bin/bash

# Print 1 to 10
echo "## Print numbers in ascending order ##"
# Loops in a sequence from 1-10
for k in $(seq 1 10)
  # Prints the current iteration's number
  do echo "$k"
# After the sequence is complete, the loop ends
done

# Print 10 to 1
echo "## Print numbers in descending order ##"
# Loops in a sequence from 10-1
for l in $(seq 10 -1 1)
  # Prints the current iteration's number
  do echo "$l"
# After the sequence is complete, the loop ends
done

## User Input Loop
echo "## User Input Loop ##"
# Loop from N to 0
for N in $(seq $1 -1 0)
  # Prints the current iteration's number
  do echo "$N"
# After the sequence is complete, the loop ends
done

