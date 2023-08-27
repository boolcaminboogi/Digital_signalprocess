%% 실습 8_3, 결합법칙 확인하기

xn = [1 1 1 1 0]; % 입력신호, x[n] 신호
h1 = [1 1 1 1 0]; % 임펄스 응답, h1[n] 신호
h2 = [2 1 2 1 0]; % 임펄스 응답, h2[n] 신호

% LTI system1 : h1[n] 응답 z[n]= x[n]*h1[n]
n = 0 : 1 : length(xn)+length(h1)-2; 
zn = conv(xn,h1); 
% LTI system2 : h2[n] 응답 y1[n] = z[n]*h2[n]
n = 0 : 1 : length(zn)+length(h2)-2;
y1 = conv(zn, h2);

subplot(2,1,1);
stem(n,y1);
xlabel('n');
ylabel('y1[n]');
title('y1[n]=(x[n]*h1[n])*h2[n]');
grid on;

% LTI system1과 system2에 대한 컨볼루션 결합 : h[n] = h1[n]*h2[n] 
hn = conv(h1, h2);

% 결합된 LTI system h[n]에 대한 입력신호 x[n] 응답: y2[n] = x[n] * h[n]
n = 0 : 1 : length(hn)+length(xn)-2;
y2 = conv(xn, hn); 

subplot(2,1,2);
stem(n,y2);
xlabel('n');
ylabel('y2[n]');
title('y2[n]=x[n]*(h1[n]*h2[n])');
grid on;





