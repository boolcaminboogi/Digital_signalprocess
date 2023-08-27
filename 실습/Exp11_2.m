%EXP11_2
%%% Ex3_1.m DFT-IDFT에 기초한 선형 필터링 실습
L=4; % 신호 x[n]의 길이
M=3; % FIR 필터의 길이
%%%% 1. 시간 영역에서의 선형 컨볼루션에 의한 y[n] 계산하기
hn = [1 2 3];
xn = [1 2 2 1];
yn1 = conv(hn, xn);
subplot(2,1,1);
stem(yn1);
grid on;
xlabel('n');
ylabel('y[n]=h[n]*x[n]');
title('\bf 시간 영역에서 선형 컨볼루션에 의한 출력 y[n]');

%%%% 2. DFT와 IDFT를 이용한 주파수 영역에서의 출력신호 y[n] 계산하기
N = L+M-1; % N-DFT 
Xk=fft(xn,N);
Hk=fft(hn,N);
Yk=Xk.*Hk;
yn2 = ifft(Yk,N);
subplot(2,1,2);
stem(yn2);
grid on;
xlabel('n');
ylabel('y[n]=IDFT(Y(k))');
title('\bf 주파수 영역에서 역이산 퓨리에 변환에 의한 출력 y[n]');


%%% Ex3_2.m DFT-IDFT에 기초한 선형 필터링 실습 (N=8, N=10)
%%%% 1. 시간 영역에서의 선형 컨볼루션에 의한 y[n] 계산하기
hn = [1 2 3];
xn = [1 2 2 1];
yn1 = conv(hn, xn);
subplot(3,1,1);
stem(yn1);
axis([1 10 0 20]);
grid on;
xlabel('n');
ylabel('y[n]=h[n]*x[n]');
title('\bf 시간 영역에서 선형 컨볼루션에 의한 출력 y[n]');
%%%% 2. DFT와 IDFT를 이용한 주파수 영역에서의 출력신호 y[n] 계산하기
N = 8; % 8-DFT 
Xk=fft(xn,N);
Hk=fft(hn,N);
Yk=Xk.*Hk;
yn2 = ifft(Yk,N);
subplot(3,1,2);
stem(yn2);
axis([1 10 0 20]);
grid on;
xlabel('n');
ylabel('y[n]=IDFT(Y(k))');
title('\bf 주파수 영역에서 8-DFT에 의한 출력 y[n]');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%% 2. DFT와 IDFT를 이용한 주파수 영역에서의 출력신호 y[n] 계산하기
N = 10; % 10-DFT 
Xk=fft(xn,N);
Hk=fft(hn,N);
Yk=Xk.*Hk;
yn3 = ifft(Yk,N);
subplot(3,1,3);
stem(yn3);
axis([1 10 0 20]);
grid on;

