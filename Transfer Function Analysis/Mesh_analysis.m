%% Mesh Analysis of a Circuit
% Here we write down the mesh equations in matrix form and hardcode them in Matlab
% We will be using the symbolic variable s to write down the Laplace Transform of the KCL KVL equations
% This variable s would later come in handy as we can directly define transfer functions using it
% Note : We will be assuming zero initial conditions while writing the equations

syms s % These are the circuit parameters defined as symbolic variables 

Z_s = [ -1-s -2 (1/(1+s))+6+s;
        2*(1+s)+(1/(1+s)) -1/(1+s) -1-s ;
        -1/(1+s) (1/(1+s))+3+s -2 ];
I = inv(Z_s) * [1 ; 0 ; 0];
simplify(I);
simplify(I)