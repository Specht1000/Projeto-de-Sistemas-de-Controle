clc
clear all
close all

s = tf('s');

G = 1/(s^2 + s + 1); % Planta

figure(1)
impulse(G)

figure(2)
step(G)

figure(3)
pzmap(G)

pole(G)
zero(G)
dcgain(G)

figure(G)
bode(G)


% Ferramentas vistas
% rltool
% sisotool % Similar a rltool mas com graficos adicionais


