clc
clear all
close all

s = tf('s');

%% Exemplo A

G = 10/(s+1)^3;

figure(1)

K = 0.2455;
% K1 = 0.2455
Ca = K;
La = Ca*G;
bode(La);
hold on;

Cb = K*(s+0.1)/s;
Lb = Cb*G;
bode(Lb);
hold on;

Cc = K*((s+0.1)^2)/s^2;
Lc = Cc*G;
bode(Lc);
hold on;
grid on


%% Exemplo B

Cb = 1;
Gb = 10 / (s*(s+1)*(s+10));
Lb = Cb*Gb;
figure(1)
bode(Lb)
grid on

Kmax = 10^(20.8/20);
