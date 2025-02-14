% Alex Dowell
% ME 494 HW 2 #1-#5
% F = A * thr + B *thr' + C
load MotorData.mat
l = load_cell;
thr = throttle;
t = time;
x = [thr, deriv(thr,.01), ones(9315,1)];
T_hat =(x'*x)\x'*l;
Y_hat = T_hat(1) * thr + T_hat(2) * deriv(thr,.01) + T_hat(3);
disp('The R squared value is:')
v = l - Y_hat;
R_sq = (T_hat'*x'*l - length(l)*mean(l)^2) / (l'*l - length(l) * mean(l)^2);
R_sq
figure(1)
plot(t,l,t,Y_hat)
title('measured and modeled force vs. time')
xlabel('time(s)')
ylabel('force(N)')
legend('measured','modeled')
% #2 %
disp('and the estimated parameters are:')
T_hat
v = (l - Y_hat);
s_sq = sum(v.^2)/(length(v) -length(T_hat));
T_hat_confid = 2 * sqrt(s_sq) * diag((x'*x)^-1);
disp('and the confidence intervals are:')
T_hat_confid
percent_T_hat_confid = (T_hat_confid./T_hat)*100;
disp('and the confidence intervals percent are:')
percent_T_hat_confid
param = {'A', 'B', 'C'};
param = param'
disp('The model is: Y_hat = T_hat(1) * thr + T_hat(2) * deriv(thr,.01) + T_hat(3)')
T = table(param,T_hat,T_hat_confid, percent_T_hat_confid)
% #3 %
R = l - Y_hat;
figure(2)
plot(t,R,'.')
title('residual vs. time')
xlabel('time(s)')
ylabel('residual')
figure(3)
histogram(R)
figure(4)
plot(Y_hat, R, '.')
title('residual vs. Yhat')
xlabel('Yhat(N)')
ylabel('residual')
% #4 %
load MotorData_Verify.mat
l2 = load_cell;
thr2 = throttle;
t2 = time;
Y_hat_verify = T_hat(1) * thr2 + T_hat(2) * deriv(thr2,.01) + T_hat(3);
figure(5)
plot(t2,l2,t2,Y_hat_verify)
title('measured and verifying modeled force vs. time')
xlabel('time(s)')
ylabel('force(N)')
legend('measured','modeled')
% #5 %
disp('The frequency sweep R squared value is:')
v = l - Y_hat;
R_sq = (T_hat'*x'*l - length(l)*mean(l)^2) / (l'*l - length(l) * mean(l)^2);
R_sq
disp('The step input R squared value is:')
v2 = l2 - Y_hat_verify;
x2 = [thr2, deriv(thr2,.01), ones(2736,1)];
R_sq2 = (T_hat'*x2'*l2 - length(l2)*mean(l2)^2) / (l2'*l2 - length(l2) * mean(l2)^2);
R_sq2
% Alex Dowell
% ME 494 HW 2 #6
% F = A * thr + B *thr' + C
% #6
load MotorData_Verify.mat
l = load_cell;
thr = throttle;
t = time;
x = [thr, deriv(thr,.01), ones(2736,1)];
T_hat =(x'*x)\x'*l;
Y_hat = T_hat(1) * thr + T_hat(2) * deriv(thr,.01) + T_hat(3);
figure(1)
plot(t,l,t,Y_hat)
title('step input measured and modeled force vs. time')
xlabel('time(s)')
ylabel('force(N)')
legend('measured','modeled')
% #6_2 %
disp('and the estimated parameters are:')
T_hat
v = (l - Y_hat);
s_sq = sum(v.^2)/(length(v) -length(T_hat));
T_hat_confid = 2 * sqrt(s_sq) * diag((x'*x)^-1);
disp('and the confidence intervals are:')
T_hat_confid
percent_T_hat_confid = (T_hat_confid./T_hat)*100*100;
disp('and the confidence intervals percent are:')
percent_T_hat_confid
param = {'A', 'B', 'C'};
param = param';
disp('The model is: Y_hat = T_hat(1) * thr + T_hat(2) * deriv(thr,.01) + T_hat(3)')
T = table(param,T_hat,T_hat_confid, percent_T_hat_confid)
% #6_3 %
R = l - Y_hat;
figure(2)
plot(t,R,'.')
title('residual vs. time')
xlabel('time(s)')
ylabel('residual')
figure(3)
histogram(R)
figure(4)
plot(Y_hat,R,'.')
title('residual vs. Yhat')
xlabel('time(s)')
ylabel('residual')
% #6_4 %
load MotorData.mat
l2 = load_cell;
thr2 = throttle;
t2 = time;
Y_hat_verify = T_hat(1) * thr2 + T_hat(2) * deriv(thr2,.01) + T_hat(3);
figure(5)
plot(t2,l2,t2,Y_hat_verify)
title('frequency sweep measured and verifying modeled force vs. time')
xlabel('time(s)')
ylabel('force(N)')
legend('measured','modeled')
% #6_5 %
disp('The step input R squared value is:')
v = l - Y_hat;
R_sq = (T_hat'*x'*l - length(l)*mean(l)^2) / (l'*l - length(l) * mean(l)^2);
R_sq
disp('The frequency sweep R squared value is:')
v2 = l2 - Y_hat_verify;
x2 = [thr2, deriv(thr2,.01), ones(9315,1)];
R_sq2 = (T_hat'*x2'*l2 - length(l2)*mean(l2)^2) / (l2'*l2 - length(l2) * mean(l2)^2);
R_sq2