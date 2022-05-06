# -*- coding: utf-8 -*-
"""
Created on Wed Aug 28 10:31:54 2019

@author: DW24
"""

# Project Euler 5

#2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?



#2*5*7*2*2*3*3*11*13*17*19*2*2*3*7*2*5*3*2*2*2*2*2*3*3*2*2*5 - built from primes 
#
#2*5*7*2*2*3*3*11*13*17*19*2*2*3*7*2*5*3*2*2*2*2
#
#Algorithm - use python 
#
# Code that tests each (even?) number (starting from 2520).
# If fails add one and continue. 
#
#Add break for completion
#
#Define max (20)
#Define primes (2,3,5,7,11,13,17,19)
#
#Build each non prime (except 1) from the primes (might be a cool way to do this but no problem if don't find it) 
#
#Want a way of stringing the parts together. Could do it with counting numbers 
#
#Divide by max. Test if 
#
#Or build from primes. Test removal of the parts for each number. Primes too, as some may be there more than once. 
#
#2*2*2*3*3*5*7 
#
#3*2*2*5*2*3*7