% 1-2. 영상태응답 구하기
a=[1.6 -0.64];      % 차분방정식의 a 계수 값
b=[0 0 0.04];        % 차분방정식의 b 계수 값
n=0:30;                % 이산시간 벡터, n은 0 ~ 30, 총 31개 
y0=[0 0];             % 출력 y의 초기조건, y[-2]=0, y[-1]=0
yy=[y0 zeros(1, length(n))];        % 출력 y의 데이터 초기화, y[-2], y[-1] ~ y[30]; 총 33개 데이터
x =[0 0 ones(1, length(n))];       % 영상태 응답으로 입력값 1 설정, x[-2], x[-1], ~ x[30]까지 : 총 33개 데이터
N=length(a); M = length(b)-1;     % 차분방정식의 계수 차수

for k=0:length(n)
     yy(k+3)=a(1)*yy(k+2)+a(2)*yy(k+1)+b(3)*x(k+2); % y[n] 계산 식
end

y_zs = yy(N+1:N+length(n)); % y[n] 재배열(초기값 y0 제외한 출력 y[n])

stem(n,y_zs);                 % 영상태 응답(Zero-Sate Response)
title('영상태 응답(Zero-State Response)');
xlabel('n');
