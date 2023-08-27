%실습3_2

t=0:0.01:2*pi;
xa = 2*cos(20*pi*t)-(2/3)*cos(20*pi*3*t)+(2/5)*cos(20*pi*5*t);
xb = 2*cos(20*pi*t)-(2/3)*cos(20*pi*sqrt(8)*t)+(2/5)*cos(20*pi*sqrt(27)*t);

subplot(2,1,1);
plot(t,xa,'r-');
axis([0 2 -2.4 2.4]);
xlabel('time(sec)');
ylabel('xa(t)');
title('스펙트럼에 의한 주기 신호 합성');
grid;

subplot(2,1,2);
plot(t,xb,'r-');
axis([0 2 -2.6 2.6]);
xlabel('time(sec)');
ylabel('xb(t)');
title('스펙트럼에 의한 비주기 신호 합성');
grid;