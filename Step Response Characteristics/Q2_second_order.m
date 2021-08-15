%% Second Order System Time Domain Analysis
w = 1;
rho = 0.25;
t = 0:0.01:50;
sys = tf(w^2,[1 2*rho*w w^2]);
x = step(sys,t);
rho = 0:0.25:2;
Y = ones(length(rho),length(t));
hold on
for i = 1:length(rho)
    sys = tf(w^2,[1 2*rho(i)*w w^2]);
    Y(i,:) = step(sys,t);
    S = stepinfo(sys);
    rise_time(i) = S.RiseTime;
    Overshoot(i) = S.Overshoot;
    PeakTime(i) = S.PeakTime;
    SettlingTime(i) = S.SettlingTime;
    plot(Y(i,:))
    xlabel('t');
    ylabel('step respone');    
end
legend( 'rho = 0','rho = 0.25','rho = 0.5','rho = 0.75','rho = 1','rho = 1.25','rho = 1.5','rho = 1.75' ,'rho = 2' );
hold off
