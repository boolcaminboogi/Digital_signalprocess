%% Ex4.m AM 변조신호 스펙트럼 확인하기
%  AM 변조신호의 최대주파수 = 22 Hz 

N = 50;                  % 이산신호 샘플수 즉 샘플링 주파수 Fs
Ts = 1/N;               % 샘플링 주기
f1 = 2;                  % 입력 연속신호의 주파수
f2 = 20;                 % AM 변조 Carrier 주파수
t=0:0.001:1;           % 연속신호 시간벡터
ts=Ts*(0:N-1);       % 이산신호시간벡터

y1=2*sin(20*pi*t).*cos(10*pi*t).*(1+sin(10*pi*t)); % 연속신호
y2=2*sin(20*pi*ts).*cos(10*pi*ts).*(1+sin(10*pi*ts));   % 이산신호


% 연속신호 y1과 샘플링 된 이산신호 y2를 그래프에 중첩하여 그린다.
subplot(3,1,1);
plot(t,y1,'k');
hold on;

plot(ts,y2,'ro');
xlabel('Time (sec)');
ylabel('y[n]');
title('AM 변조된 신호');

%% DFT를 이용한 스펙트럼 그리기

X=fft(y2)/N               %   이산퓨리에급수(DTFS) 분석식
Y2=fftshift(X)            %   Y2[k] 재정렬
k = -N/2:N/2-1;        %  이산 주파수 설정
subplot(3,1,2);
stem(k,abs(Y2));
xlabel('Frequency');
ylabel('Y2[k]');
title('AM 변조된 신호 스펙트럼');

%% IDFT를 이용한 원신호 y[n] 계산하기

yn2=N*ifft(X);
subplot(3,1,3);
plot(t,y1,'k');
hold on;

plot(ts,yn2,'ro');
xlabel('Time (sec)');
ylabel('y[n]');
title('IDFT로 변환된 원본 AM 변조된 신호');
