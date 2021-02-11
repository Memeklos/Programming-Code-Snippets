#!/usr/bin/env python3

## Script meant to utilize functions to complete simple calculations ##

## Import Libaries ##
import random
import math
# from math import *
# from math import fabs

## Get Random Data ##
def randomNum(i):

	randomlist = []
#	seed(i)
	for i in range(0, type(i)):
	x = random.randint(1,600)
	randomlist.append(x)
	print(randomlist)

## Calculate Sum (Function) ##
def isSum():
	pass

## Calculate Min (Function) ##
def isMin():
	pass

## Calculate Max (Function) ##
def isMax(i):
	pass

## Calculate Average (Function) ##
def isAvg(i):
    pass

## Calculate Median (Function) ##
def isMedian(i):
    pass

## Calculate Prime (Function) ##
def isPrime(i):
    pass

## Main ##
def main():

    # Get Input
    i = input("How many random numbers? ")
    print("Number of random numbers: " + i)

    # Call Functions
    randomNum(i)
    #isSum(i)


if __name__ == "__main__":
    main()





