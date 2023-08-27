t=0:0.001:1;

f1=200;
f2=100;
f3=0;

y1=5*cos(2*pi*f1*t);
y2=5*cos(2*pi*f2*t);
y3=5*cos(2*pi*f3*t);

subplot(3,1,1);
plot(t,y1,'c');  hold on;
axis([0 0.05 -5 5]);
title('실습 1-3 : 200Hz 정현파 출력');
subplot(3,1,2);
plot(t,y2,'g');  hold on;
axis([0 0.05 -5 5]);
title('실습 1-3 : 100Hz 정현파 출력');
subplot(3,1,3);
plot(t,y3,'r');  hold on;
axis([0 1 -30 30]);
title('실습 1-3 : 0Hz 정현파 출력');

xlabel('Time(sec)');
ylabel('Amplitude');
