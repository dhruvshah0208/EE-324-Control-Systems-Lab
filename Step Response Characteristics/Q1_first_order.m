%% Q1 1st order system
% References: 
% %https://in.mathworks.com/help/control/ug/view-system-characteristics-on-response-plots.html
% https://in.mathworks.com/help/control/ug/time-response-of-discrete-time-model.html
% https://in.mathworks.com/help/control/ref/lti.stepinfo.html;jsessionid=4000b14723130d4fcbb468d1e925
sys = tf(38,[1 4]);
% step(sys);
S = stepinfo(sys);
for a = 38:38*100
    sys = tf([a],[1 4]);
    S = stepinfo(sys);
    x(a-37) = S.RiseTime;
end
for b = 4:4*100
    sys = tf([38],[1 b]);
    S = stepinfo(sys);
    y(b-3) = S.RiseTime;
end
plot(38:38*100,x);
title(" Variation of Rise time wrt a");
xlabel(" a ");
ylabel("Rise Time");

plot(4:4*100,y);
title(" Variation of Rise time wrt b");
xlabel(" b ");
ylabel("Rise Time");



    