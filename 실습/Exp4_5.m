a = 0.1;
w = -20:.05:20;
X = 1./(a+j*w);
mag = abs(X);
subplot(2,2,1);
plot(w,mad);
axis([-20 20 0 1]);
xlabel('frequency(rad/sec)');
ylabel('magnitude');
grid on
phase = angle(X);
phase = phase*180/pi; % 각도 degree로 변환
subplot(2,2,2);
plot(w,phase(degree));
xlabel('frequency(rad/sec)');
ylabel('phase(degree)');
grid on
a = 10;
w = -20:.05:20;
X = 1./(a+j*w);
mag = abs(X);