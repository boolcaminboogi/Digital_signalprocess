%영차홀드

fs = 10;
 
ti = -2; tf = 2; dt = 0.001;   % 연속 시간 파라미터 설정
t =ti:dt:tf;
xt = cos(2*pi*t);    
 
n = ti:1/fs:tf;      %샘플링 주파수에 따른 샘플 개수 설정
xn = cos(2*pi*n);
 
subplot(2,1,1);
plot(t,xt,'b:');    %연속신호 Plot
axis([ti tf -1.5 1.5]);
hold on
stem(n,xn);   % 샘플링된 이산신호 x[n] 
title('\bf{10hz샘플링된 이산신호}');
xlabel('\bf{t}');
 
subplot(2,1,2);
plot(t,xt,'k:');
axis([ti tf -1.5 1.5]);
hold on
stairs(n,xn);
title('\bf{영차홀드에 의해 복원된 신호}');
xlabel('\bf{t}');