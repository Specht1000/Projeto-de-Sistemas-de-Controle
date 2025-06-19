clc
clear all
close all

m=1;
b=1;
c=1;

A = [  0      1
      -c/m   -b/m ];

B = [ 0 
      1/m ];
  
C = [ 1 0 ];

D = [ 0 ];

x0 = [ 1    % posição inicial
       2 ]; % velocidade inicial
  
 Sys = ss(A, B, C, D);
 
 figure(1)
 step(Sys) % Resposta ao degrau (cond. iniciais zeradas)
 
 figure(2)
 initial(Sys, x0) % Resposta para uma condicao inicial (entrada zerada)
 
 
 
 
 
 
 