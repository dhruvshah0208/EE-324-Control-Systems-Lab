%% Q1 - Transfer Functions for Different Connections
% Note : minreal is important to do pole zero cancellations
G1 = tf([10],[1 2 10]);
G2 = tf([5],[1 5]);

cascade_tf = minreal(G1*G2);
parallel_tf = minreal(G1 + G2);
feedback_tf = minreal(G1 / (1 + G1*G2));

% step(G1,'r');

%% Q2 Poles and Zeroes of Above Transfer Functions
% We use 2 commands of matlab to find the poles and zeros
% tfdata - returns array polynomials for the numerator and denominator 
% roots - given an array of polynomial coefficients it returns the roots of the polynomial

[num,den] = tfdata(cascade_tf,'v'); % Gets the numerator and denominator of a transfer function
zeros_cascade = roots(num)
poles_cascade = roots(den)

[num,den] = tfdata(parallel_tf,'v'); % Gets the numerator and denominator of a transfer function
zeros_parallel = roots(num)
poles_parallel = roots(den)

[num,den] = tfdata(feedback_tf,'v'); % Gets the numerator and denominator of a transfer function
zeros_feedback = roots(num)
poles_feedback = roots(den)

