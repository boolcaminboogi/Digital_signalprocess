%실습3_4

clf;
t = -0.04:.0001:0.08;
y = 0.5*(square(2*pi*25*t)+1); % 25Hz 구형파 신호를 생성
plot(t,y);
grid on
axis([-0.04 0.08 -0.2 1.2]);
title('제 3고조파까지 신호합성');
hold on;
y=0.5; % k=0인 DC 값
n = 10000003; % k=3번째 까지의 고조파신호 합성
for k=-n:2:n
y=y+(-1i/(pi*k))*exp(1i*2*pi*k*25*t);
end
plot(t,y,'r-');
grid on
