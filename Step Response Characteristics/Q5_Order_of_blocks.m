%% Q5 Order of Blocks
G1 = tf([1 5],[1 6 8]);
H1 = tf([1 5],[1 4]);
H2 = tf(1,[1 2]);

% tau = 0.1;
% tau = 0.5;
tau = 2;
t = [0:tau:10];
y1 = step(G1,t);
u1 = step(H1,t);
u2 = step(H2,t);
y2 = lsim(H2,u1,t);
y3 = lsim(H1,u2,t);


% hold on 
% plot(t,y1);
% plot(t,y2);
% plot(t,y3);
% title('Step Responses for \tau = 0.1');
% legend('Case 1','Case 2','Case 3');
% hold off

% hold on 
% plot(t,y1);
% plot(t,y2);
% plot(t,y3);
% title('Step Responses for \tau = 0.5');
% legend('Case 1','Case 2','Case 3');
% hold off
% 
hold on 
% plot(t,y1);
plot(t,y2);
plot(t,y3);
legend('Case 1','Case 2','Case 3');
title('Step Responses for \tau = 2');
hold off
% 
% 
% 
