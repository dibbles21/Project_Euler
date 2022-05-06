# -*- coding: utf-8 -*-
"""
Created on Fri Sep 13 17:02:45 2019

@author: DW24
"""

# 2 ** 15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2 ** 1000?

# 1024 - 7
2 ** 10

# 2048 - 14
2 ** 11

# 4096 - 19
2 ** 12

# 8192 - 20
2 ** 13

# 16384 - 22
2 ** 14

# 32768 - 26
2 ** 15

x = 2 ** 1000

def sum_digits(n):
    s = 0
    while n:
        s += n % 10
        n //= 10
    return s

ans = sum_digits(x)