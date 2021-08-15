%% Q4 Discrete and Continuous Time Transfer Functions
s = tf('s');
G = 1/s;
% step(G);
ts = 0.1;
z = tf('z',ts);
H = 1/z;
% step(H)








