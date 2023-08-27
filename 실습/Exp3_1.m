%실습3_1

t=0:0.01:2*pi;
x1 = cos(pi*t).*sin(10*pi*t);
%x2 = (1/2)*cos(2*pi*(9/2)*t-pi/2)+(1/2)*cos(2*pi*(11/2)*t-pi/2);
y1=(1/4)*exp(j*pi/2)*exp(j*2*pi*(-9/2)*t)+(1/4)*exp(j*-pi/2)*exp(j*2*pi*(9/2)*t);
y2=(1/4)*exp(j*pi/2)*exp(j*2*pi*(-11/2)*t)+(1/4)*exp(j*-pi/2)*exp(j*2*pi*(11/2)*t);

x2=y1+y2;
subplot(3,1,1);
plot(t,x1,'r-');
axis([0 3 -1.1 1.1]);
xlabel('time(sec)');
ylabel('x1(t)');
title('시간 영역 표현');
grid;
subplot(3,1,2);
plot(t,x2,'r-');
axis([0 3 -1.1 1.1]);
xlabel('time(sec)');
ylabel('x2(t)');
title('주파수 영역에서의 신호합성');
grid;
subplot(3,1,3)
plot(t,x1,'g'); hold on;
plot(t,x2,'b'); hold on;
xlabel('time(sec)');
ylabel('x1,2(t)');
title('비교');
grid;