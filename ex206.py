# -*- coding: utf-8 -*-
"""
Created on Sun Sep  8 16:46:05 2019

@author: DW24
"""

# Project Euler 206

# Find the unique positive integer whose square has the form
# 1_2_3_4_5_6_7_8_9_0,
# where each “_” is a single digit

# This is 19 digits long

import numpy as np
import math

# Create a vector as a row
# Possible starting values for the integer
# could end in 70 too (in fact has to ;))
vector_row = np.arange(1 * 10 ** 9 + 30,
                       math.sqrt(2) * 10 ** 9,
                       100)

vector_row_2 = np.arange(1 * 10 ** 9 + 70,
                       math.sqrt(2) * 10 ** 9,
                       100)

vector_row_use = np.concatenate((vector_row, vector_row_2),
                                axis = 0)

squared = vector_row_use ** 2

# f = lambda a,b: a if (a > b) else b
# reduce(f, [47,11,42,102,13])
# 102

# def func_get_val(array, digit, number):
    
    # 5th last number is 8
test = list(filter(lambda x:
            (math.floor(
            x / (1 * 10 ** (5 - 1))) - 8) % 10 == 0, squared))
    
    # 7th last digit is 7
test = list(filter(lambda x:
            (math.floor(
            x / (1 * 10 ** (7 - 1))) - 7) % 10 == 0, test))
        
    # 9th last digit is 6
test = list(filter(lambda x:
            (math.floor(
            x / (1 * 10 ** (9 - 1))) - 6) % 10 == 0, test))
        
    # 11th last digit is 5
test = list(filter(lambda x:
            (math.floor(
            x / (1 * 10 ** (11 - 1))) - 5) % 10 == 0, test))
            
    # 13th last digit is 4
test = list(filter(lambda x:
            (math.floor(
            x / (1 * 10 ** (13 - 1))) - 4) % 10 == 0, test))
            
    # 15th last digit is 3
test = list(filter(lambda x:
            (math.floor(
            x / (1 * 10 ** (15 - 1))) - 3) % 10 == 0, test))
            
    # 17th last digit is 2
test = list(filter(lambda x:
            (math.floor(
            x / (1 * 10 ** (17 - 1))) - 2) % 10 == 0, test))

ans = math.sqrt(test[0])