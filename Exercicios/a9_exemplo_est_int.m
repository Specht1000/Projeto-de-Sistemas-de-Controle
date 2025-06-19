clc
clear all
close all
s = tf('s');
%%

R = 1;
L = 1;
C = 1;
RC = R*C;

A = [ -2/RC 1/C
      -1/L   0  ];
B = [ 1/RC
      1/L  ];
C = [ -1 0 ];
D = 1 ;

G = minreal(C*inv(s*eye(2)-A)*B+D);

eig(A)

pole(G)

