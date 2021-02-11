#!/usr/bin/env python3

## Script meant to utilize functions to complete simple calculations ##

## Import Libaries ##
import random
import math

## Randomize Numbers ##
def randomNum(i):
    randomlist = []
    for i in range(0, int(i)):
      x = random.randint(1,600)
      randomlist.append(x)
    return randomlist

## Calculate Sum (Function) ##
def isSum(numArray):
    return math.fsum(numArray)

## Calculate Min + Max (Function) ##
def isMinx(numArray):
    mum = min(numArray)
    maxim = max(numArray)
    return [mum, maxim]

## Calculate Average (Function) ##
def isAvg(numArray):
    return isSum(numArray) / len(numArray)

## Calculate Median (Function) ##
def isMedian(numArray):
    # If Length is Even, Divide the Two Middle Numbers By Two
    if len(numArray) % 2 == 0:
      x = len(numArray) / 2
      median = (numArray[int(x)-1] + numArray[int(x)]) / 2
      return median
    # If Length is Odd, Get the Middle Number
    else:
      x = len(numArray) % 2
      y = (len(numArray) / 2 )
      return numArray[int(y)]

## Main ##
def main():
    # Get Input
    i = input("How many random numbers? ")
    print("Number of random numbers: " + i)

    # Call Functions
    numArray = randomNum(i)
    minmax = isMinx(numArray)
    sum = isSum(numArray)
    avg = isAvg(numArray)
    median = isMedian(numArray)

    # Print Results
    print("Array: ")
    for i in range(len(numArray)):
      print(numArray[i], end=" ")
    print("\nMin: {0}\nMax: {1}".format(minmax[0],minmax[1]))
    print("Sum: {0}".format(sum))
    print("Average: {0}".format(avg))
    print("Median: {0}".format(median))

if __name__ == "__main__":
    main()

