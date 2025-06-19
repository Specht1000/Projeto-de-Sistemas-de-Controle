%%
clc
clear all
close all

s = tf('s');


%%

A = [ 0   1
      2  -1 ];

B = [ 0
      1 ];

C = [ 1 0 ];

D = 0;

x0 = [ 30
        0 ];

G = minreal(C*inv(s*eye(2)-A)*B+D);

eig(A)

pole(G)

sys = ss(A,B,C,D);
% step(sys);

K = [ 102 19 ];
 
r = 45;

% alpha = 100;
alpha = inv((C-D*K)*inv(B*K-A)*B+D)
% alpha = inv((C*inv(B*K-A)*B); % Se D=0






%% 

syms x;

vpa(x * eye(2) - A)

det(vpa(x * eye(2) - A))

vpa(root(det(vpa(x * eye(2) - A)), x))

%% Controlabilidade e Observabilidade

Ctrl = [B A*B ]

det(Ctrl)

Obs = [ C
        C*A ]

det(Obs)

