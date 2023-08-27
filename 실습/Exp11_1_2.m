%Exp 11_2
%%% Ex2.m 영채우기(zero-padding)의 효과 실습
N = 32; % 이산 신호의 샘플 개수
x=[1 2 2 1]; % 원본 신호 x[n] 벡터
x1=[x zeros(1,N-length(x))]; % Zero-Padding : 4개의 0 채우기
n=0:N-1; % 시간축 이산신호
k=0:N-1; % 주파수 축 샘플주파수
%%% DTFT 스펙트럼 계산하기
df = 1/500; f=df*[0:500]; % DTFT 스펙트럼의 주파수축 설정
W=exp(-j*2*pi.*f); % 계산
Xf = zeros(1, length(f)); % DTFT 0으로 초기화
for m = 1: N
Xf = Xf+x1(m)*W.^(m-1); % DTFT 계산
end

%%%%%% 8점 - DFT 계산하기
Xk = fft(x1); % 이산신호 x에 대한 DFT - FFT 알고리즘 활용
subplot(3,1,1);
stem(k,abs(Xk),'r');
xlabel('\bf F');
ylabel('|X[k]|');
title('8-점 DFT 진폭스펙트럼');
grid on;
hold on;
plot(f*N,abs(Xf),'--b'); % DTFT의 진폭스펙트럼 그리기
subplot(3,1,2);
stem(k, angle(Xk),'r');
axis([0 32 -5 5]);
xlabel('\bf F');
ylabel('X[k]의 위상');
title('8-점 DFT 위상스펙트럼');
grid on;
%%%%%% IDFT를 이용한 x[n] 계산하기
xn = ifft(Xk); % IDFT 
subplot(3,1,3);
stem(n, xn,'r');
axis([0 32 0 2.5]);
xlabel('n');
ylabel('x[n]');
title('IDFT에 의한 원본신호 x[n]');
grid on;
