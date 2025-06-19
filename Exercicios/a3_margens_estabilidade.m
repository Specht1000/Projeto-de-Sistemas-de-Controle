clc
clear all
close all

s = tf('s');

%% Exemplo A

Ca = 1;
Ga = 400/(s^2+20*s+200);
La = Ca*Ga;
figure(1)
bode(La)
grid on
hold on % nao apaga
Ca = 100;
La = Ca*Ga;
bode(La)
grid on


%% Exemplo B

Cb = 1;
Gb = 10 / (s*(s+1)*(s+10));
Lb = Cb*Gb;
figure(1)
bode(Lb)
grid on
hold on
Cb = 100;
Lb = Cb*Gb;
bode(Lb)
grid on

Kmax = 10^(20.8/20);
