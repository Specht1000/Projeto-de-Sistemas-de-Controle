clc
clear all
close all

%%

syms a b c d;

A = [-a-b  0  0
       a  -c  0
       b   c -d]

B = [ 1
      0
      0]

C = [0 0 1]

Ctrl = [B A*B A*A*B]

det(Ctrl)

Obs = [ C
        C*A
        C*A*A ]
det(Obs)
