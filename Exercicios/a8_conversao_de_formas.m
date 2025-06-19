clc
clear all
close all
s = tf('s');
figure(1)
hold all
%% Funcao de Transferencia
G = (s^2+7*s+8)/(s^2+4*s+3);
step(G)
%% FCC

A = [ 0  1 
     -3 -4 ];
B = [ 0
      1 ];
C = [ 5  3 ];
D = 1;

Sys_FCC = ss(A,B,C,D);
step(Sys_FCC);

%% FCD

A2 = [-1  0 
      0 -3 ];
B2 = [ 1
      2 ];
C2 = [ 1  1 ];
D2 = 1;

Sys_FCD = ss(A2,B2,C2,D2);
step(Sys_FCD);
