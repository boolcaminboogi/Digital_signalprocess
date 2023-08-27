%T1=1인경우
A = 1; T1 = 1; 
f=-4*2*pi/T1:0.01:4*2*pi/T1;
mag = abs(2*A*sin(2*pi*f*T1)./(2*pi*f));
subplot(3,1,1);
plot(f, mag,'r-');
title("T1=1")
axis([-10 10 0 6]);
grid on;
%T1 = 4 인 경우
A = 1; T1 = 4;
f=-4*2*pi/T1:0.01:4*2*pi/T1;
mag = abs(2*A*sin(2*pi*f*T1)./(2*pi*f));
subplot(3,1,2);
plot(f, mag,'r-');
title("T1=4")
axis([-10 10 0 6]);
grid on;
%T1 = 8 인 경우
A = 1; T1 = 8;
f=-4*2*pi/T1:0.01:4*2*pi/T1;
mag = abs(2*A*sin(2*pi*f*T1)./(2*pi*f));
subplot(3,1,3);
plot(f, mag,'r-');
title("T1=8")
axis([-10 10 0 6]);
grid on;