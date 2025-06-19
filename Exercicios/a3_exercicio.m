clc
clear all
close all

% Projete o ganho K do compensador para 
% que margem de fase seja aproximadamente 45º

s = tf('s');

K = 1;
C = (s+2)/(s+1);
G = 2/(s^3 + 2*s^2 + s);

L = K*C*G;

figure(1)
bode(L)
grid on

figure(2)
K = 10^(-20.55/20)
L = K*C*G;
bode(L)
grid on