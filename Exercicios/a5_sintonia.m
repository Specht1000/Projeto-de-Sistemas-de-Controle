clc
clear all
close all

%%
s = tf('s');

Ga = tf([10], [1 3 2]);

% subplot(2, 1, 1);
step(Ga, 7);
% subplot(2, 1, 2);
% step(Ga*s, 7);

% Método ZN 1
% Traçar reta tangente no ponto da derivada máxima
% Obter L (corte inferior) e T (corte superior)

La = 0.2;
Ta = 2;

Ka = 1.2*(Ta/La);
Tia = Ta/0.3;
Tda = La/2;

P = Ka;
I = Ka/Tia;
D = Ka*Tda;
N = 100;

%%
Gb = zpk([], [0 -1 -5], 1);

% Método ZN 2

bode(Gb);
grid on
hold on
bode(Kcr*Gb)

% Gain Margin 29.5
Kcr = 10^(29.5/20);

% Utilizar w180
Pcr = 2*pi/(2.24);

% Pela tabela
% Sistema de primeira ordem, portanto PD
K = 0.8 * Kcr;
Td = Pcr/8;

Pb = K;
Db = K*Td;




