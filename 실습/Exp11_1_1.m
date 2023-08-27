%EXP 11_1
%%% Ex1.m DFT와 DTFT와의 관계 실습

N=4; % 이산 신호의 샘플 개수
x=[1 2 2 1]; % 신호 x[n] 벡터
n=0:N-1; % 시간축 이산신호
k=0:N-1; % 주파수 축 샘플주파수
WN = exp(-j*2*pi/N).^n; % 회전인자 WN 계산
for m = 1:N
X(m)=sum(x.*WN.^(m-1)); % DFT 수행
end
df = 1/500; f=df*[0:500]; % DTFT 스펙트럼의 주파수축 설정
W=exp(-j*2*pi.*f); % 계산
Xf = zeros(1, length(f)); % DTFT 0으로 초기화
for m = 1: N
Xf = Xf+x(m)*W.^(m-1); % DTFT 계산
end
for m=1:N
x(m) = sum(X.*(WN.^(-1)).^(m-1))/N; % IDFT에 의한 x[n] 계산
end
subplot(3,1,1);
stem(k,abs(X),'r'); % DFT의 진폭스펙트럼 그리기
xlabel('\bf F');
ylabel('|X[k]|');
title('4-점 DFT 진폭스펙트럼');
grid on;
hold on;
plot(f*N,abs(Xf),'--b'); % DTFT의 진폭스펙트럼 그리기
subplot(3,1,2);
stem(k,angle(X),'r'); % DFT의 위상스펙트럼 그리기
axis([0 4 -5 5]);
xlabel('\bf F');
ylabel('X[k]의 위상');
title('4-점 DFT 위상스펙트럼');
grid on;
subplot(3,1,3);
stem(n,x,'r'); % IDFT에 의한 원본신호 x[n] 그리기xlabel('\bf n');
ylabel('x[n]');
axis([0 4 0 2.5]);
title('IDFT에 의한 원본신호 x[n]');
grid on;
