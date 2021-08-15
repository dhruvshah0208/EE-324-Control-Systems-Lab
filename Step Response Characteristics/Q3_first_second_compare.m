%% Differences in First and Second Order Responses

sys_first_order = tf(4,[1 4]);
w = 1;
rho = 1.5;
sys_second_order = tf(w^2,[1 2*rho*w w^2]);
rho = 1;
sys_second_order_critical = tf(w^2,[1 2*rho*w w^2]);
x = step(sys_first_order);
y = step(sys_second_order);
z = step(sys_second_order_critical);
hold on
plot(x);
plot(y);
plot(z);
xlabel('time (t)');
ylabel('step response');
legend(' First Order Response' ,'Second Order Response' ,'Second Order Response');
hold off


S = stepinfo(sys_second_order_critical);
S.Overshoot % Answer = 0



