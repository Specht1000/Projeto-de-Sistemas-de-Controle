clc 
clear all
close all


%% 
s = tf('s');

G2 = 1 / (s*(s+1) * (s+5));

K0 = 10^(11.4/20);

Kv = 0.197;
dcgain(G2*s);


w = 10.^(-5:0.01:5);

Kvlinha = K0 * Kv;

ev = 0.01;
Kvalvo = 1/ev;

alpha = Kvalvo/Kvlinha;

w0linha = 0.64;
za = w0linha/10;

pa = za/alpha;

Cs = K0*(s+za)/(s+pa);

dcgain(G2*Cs*s)

figure(1);
hold on;
bode(G2, w)
bode(K0*G2,w);
bode(Cs*G2,w);

