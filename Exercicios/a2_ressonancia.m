clc
clear all
% close all

s = tf('s');

wn = 10;
xi = 0.0001;

G = (wn^2)/(s^2+2*xi*wn*s+wn^2);

figure(1);
hold on
bode(G)
grid on
