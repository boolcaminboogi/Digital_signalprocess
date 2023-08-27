% 1-1. 영입력응답 구하기

a=[1.6 -0.64];   % 차분방정식의 a 계수 값
b=[0 0 0.04];     % 차분방정식의 b 계수 값
n=0:30;             % 이산시간 벡터, n은 0 ~ 30, 총 31개 
y0=[1 0.8];        % 출력 y의 초기조건, y[-2]=1, y[-1]=0.8
yy=[y0 zeros(1, length(n))];      % 출력 y의 데이터 초기화, y[-2], y[-1] ~ y[30]; 총 33개 데이터
x =[0 0 zeros(1, length(n))];      % 영입력 응답으로 입력값 모두 0 설정, x[-2], x[-1], ~ x[30]까지 : 총 33개 데이터
N=length(a); M = length(b)-1;    % 차분방정식의 계수 차수

for k=0:length(n)                                % 차분방정식의 반복대입법에 의한 출력값 계산하기
    yy(k+3)=a(1)*yy(k+2)+a(2)*yy(k+1)+b(3)*x(k+2);       % y[n] 계산 식: y[n] = a1*y[n-1]+a2*y[n-2]+b2*x[n-2]
end
y_zi=yy(N+1:N+length(n));                   % y[n] 재배열(초기값 y0 제외한 출력 y[n])
stem(n,y_zi);                                    % 영입력 응답(Zero-Input Response)
title('영입력 응답(Zero-Input Response)');
xlabel('n');
