%실습3_4

clf;
t = -0.04:.0001:0.08;
y = 0.5*(square(2*pi*25*t)+1); % 25Hz 구형파 신호를 생성
for i=1:5
    subplot(5,1,i)
    plot(t,y);
    grid on
    axis([-0.04 0.08 -0.2 1.2]);
    hold on;
end

n = 1; % k=1번째 까지의 고조파신호 합성
y1=0.5;
for k=-n:2:n
    
    y1=y1+(-1i/(pi*k))*exp(1i*2*pi*k*25*t);
end
n = 3; % k=3번째 까지의 고조파신호 합성
y2=0.5;
for k=-n:2:n
    y2=y2+(-1i/(pi*k))*exp(1i*2*pi*k*25*t);
end
n = 5; % k=5번째 까지의 고조파신호 합성
y3=0.5;
for k=-n:2:n
    y3=y3+(-1i/(pi*k))*exp(1i*2*pi*k*25*t);
end
n = 25; % k=25번째 까지의 고조파신호 합성
y4=0.5;
for k=-n:2:n
    y4=y4+(-1i/(pi*k))*exp(1i*2*pi*k*25*t);
end
n = 121; % k=121번째 까지의 고조파신호 합성
y5=0.5;
for k=-n:2:n
    y5=y5+(-1i/(pi*k))*exp(1i*2*pi*k*25*t);
end

subplot(5,1,1)
plot(t,y1,'r-');
title('제 1고조파까지 신호합성');
grid on
subplot(5,1,2)
plot(t,y2,'r-');
title('제 3고조파까지 신호합성');
grid on
subplot(5,1,3)
plot(t,y3,'r-');
title('제 5고조파까지 신호합성');
grid on
subplot(5,1,4)
plot(t,y4,'r-');
title('제 25고조파까지 신호합성');
grid on
subplot(5,1,5)
plot(t,y5,'r-');
title('제 121고조파까지 신호합성');
grid on