% 2-1,2. 3점/7점 이동평균필터(Moving Average) 구현하기
n=0:80;                                      % 이산시간 시간 벡터 생성, n은 0 ~ 50 
s = 1.02.^n;                               % 송신신호 s[n] 생성
delta = 0.5*cos(2*pi*n/8 + pi/4);   % 잡음신호 생성
x = s + delta;                                % 잡음이 포함된 수신신호 생성

h3=ones(3,1)/3;                         % 3점 이동평균 필터 계수
y3 = conv(h3,x);                        % 잡음 필터링된 y[n] = h[n]*x[n] 

h7=ones(7,1)/7;                        % 3점 이동평균 필터 계수
y7 = conv(h7,x);                        % 잡음 필터링된 y[n] = h[n]*x[n] 

h100=ones(100,1)/100;                        % 3점 이동평균 필터 계수
y100 = conv(h100,x);                        % 잡음 필터링된 y[n] = h[n]*x[n] 


subplot(2,2,1);
stem(n,s);
title('송신신호 s[n]');
xlabel('n');

subplot(2,2,2);
stem(n,x);
title('수신신호 x[n]');
xlabel('n');

subplot(2,2,3);
stem(n,y3(1:length(n)),'r');
title('3점 이동평균 필터신호 y3[n]');
xlabel('n');

subplot(2,2,4);
stem(n,y10(1:length(n)),'bl');
title('100점 이동평균 필터신호 y10[n]');
xlabel('n');
