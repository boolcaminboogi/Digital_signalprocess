%% 실습 8_4, 배분법칙 확인하기

xn = [1 1 1 1 0]; % 입력신호, x[n] 신호
h1 = [1 1 1 1 0]; % 임펄스 응답, h1[n] 신호
h2 = [2 1 2 1 0]; % 임펄스 응답, h2[n] 신호
n = 0 : 1 : length(xn)+length(h1)-2; 

% 두 개의 병렬연결 LTI system 응답 : y[n]= x[n]*{h1[n]+h2[n]} 
y1 = conv(xn,h1) + conv(xn,h2);
% LTI system2 : h[n] = h1[n]+h2[n] 
hn = h1 + h2;
y2 = conv(xn, hn); % y2 = x[n] * h[n]

subplot(3,1,1);
stem(n,y1);
axis([-1 9 0 12]);
xlabel('n');
ylabel('y1[n]');
title('y1[n]=x[n]*h1[n]+x[n]*h2[n]');
grid on;

subplot(3,1,2);
stem(n,y2);
axis([-1 9 0 12]);
xlabel('n');
ylabel('y2[n]');
title('y2[n]=x[n]*(h1[n]+h2[n])');
grid on;

%
subplot(3,1,3);
stem(n,y1,'g*');
stem(n,y2,'r');
axis([-1 9 0 12]);
xlabel('n');
ylabel('y[n]');
title('y[n]=x[n]*(h1[n]+h2[n])');
grid on;

