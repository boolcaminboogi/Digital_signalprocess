% 실습 4-1
% X = 1/(a+jw);

w = -20:.05:20;
H1 = 1./(0.1+1j*w);
H2 = 1./(1+1j*w);
H3 = 1./(5+1j*w);
H4 = 1./(10+1j*w);
H5 = 1./(20+1j*w);

mag1=abs(H1);
mag2=abs(H2);
mag3=abs(H3);
mag4=abs(H4);
mag5=abs(H5);

%H1
figure
subplot(2,1,1);
plot(w,mag1,'r'); hold on;
title("0.1 Magnitude 스펙트럼")
axis([-20 20 0 10]);
xlabel('frequency(rad/sec)');
ylabel('magnitude');
grid on

phase = angle(H1);
phase = phase*180/pi; % 각도 degree로 변환
subplot(2,1,2);
plot(w,phase,'r');  hold on;
title("0.1 Phase 스펙트럼")
xlabel('frequency(rad/sec)');
ylabel('phase(degree)');
grid on

%H2
figure
subplot(2,1,1)
plot(w,mag2,'g'); hold on;
title("1 Magnitude 스펙트럼")
axis([-20 20 0 1]);
xlabel('frequency(rad/sec)');
ylabel('magnitude');
grid on

phase = angle(H2);
phase = phase*180/pi; % 각도 degree로 변환
subplot(2,1,2)
plot(w,phase,'g'); hold on;
title("1 Phase 스펙트럼")
xlabel('frequency(rad/sec)');
ylabel('phase(degree)');
grid on

%H3
figure
subplot(2,1,1)
plot(w,mag3,'b'); hold on;
title("5 Magnitude 스펙트럼")
axis([-20 20 0 1]);
xlabel('frequency(rad/sec)');
ylabel('magnitude');
grid on

phase = angle(H3);
phase = phase*180/pi; % 각도 degree로 변환
subplot(2,1,2)
plot(w,phase,'b'); hold on;
title("5 Phase 스펙트럼")
xlabel('frequency(rad/sec)');
ylabel('phase(degree)');
grid on

%H4
figure
subplot(2,1,1)
plot(w,mag4,'y'); hold on;
title("10 Magnitude 스펙트럼")
axis([-20 20 0 1]);
xlabel('frequency(rad/sec)');
ylabel('magnitude');
grid on

phase = angle(H4);
phase = phase*180/pi; % 각도 degree로 변환
subplot(2,1,2)
plot(w,phase,'y'); hold on;
title("10 Phase 스펙트럼")
xlabel('frequency(rad/sec)');
ylabel('phase(degree)');
grid on

%H5
figure
subplot(2,1,1)
plot(w,mag5,'c'); hold on;
title("20 Magnitude 스펙트럼")
axis([-20 20 0 1]);
xlabel('frequency(rad/sec)');
ylabel('magnitude');
grid on

phase = angle(H5);
phase = phase*180/pi; % 각도 degree로 변환
subplot(2,1,2)
plot(w,phase,'c'); hold on;
title("20 Phase 스펙트럼")
xlabel('frequency(rad/sec)');
ylabel('phase(degree)');
grid on