% 실습 4-1
% X = 1/(a+jw);
a = 1;
w = -20:.05:20;
H = 1./(a+1j*w);
mag = abs(H);
plot(w,mag);
axis([-20 20 0 1]);
xlabel('frequency(rad/sec)');
ylabel('magnitude');
title("주파수에 대한 Magnitude 스펙트럼")
grid on
phase = angle(H);
phase = phase*180/pi; % 각도 degree로 변환
figure
plot(w,phase);
xlabel('frequency(rad/sec)');
ylabel('phase(degree)');
title("주파수에 대한 Phase 스펙트럼")
grid on
