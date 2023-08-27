a=-7:5;
Ts1=0.005;
Ts2=0.0001;
Ts3=0.0025;
ta1=a*Ts1;
ta2=a*Ts2;
ta3=a*Ts3;
xa1=20*cos(80*pi*ta1-0.4*pi);
xa2=20*cos(80*pi*ta2-0.4*pi);
xa3=20*cos(80*pi*ta3-0.4*pi);

subplot(3,1,1);
plot(ta1,xa1,'c');
axis([-0.03 0.03 -23 23]);
subplot(3,1,2);
plot(ta2,xa2,'g');
axis([-0.03 0.03 -23 23]);
subplot(3,1,3);
plot(ta3,xa3,'r');
axis([-0.03 0.03 -23 23]);

xlabel('Time(sec)');
ylabel('Amplitude');
