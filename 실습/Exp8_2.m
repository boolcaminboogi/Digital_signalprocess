xn = [0-1 0 1 2 0]; % 입력신호 x[n]
hn = [0 3 2 1 0]; % 임펄스 응답, h[n] 신호
n = -2 : 1 : 6; 

yn = conv(xn,hn); % y[n] = x[n] * h[n]
stem(n,yn);
axis([-4 8 -5 10]);
xlabel('n');
ylabel('y[n]');
title('y[n]=x[n]*h[n]');
grid on;