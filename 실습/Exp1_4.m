t=0:0.001:1;

y1=5*cos(2*pi*100*t+pi/2);
y2=5*cos(2*pi*100*t+pi);
y3=5*cos(2*pi*100*t-pi/2);
y4=5*cos(2*pi*100*t-pi);

plot(t,y1,'c');  hold on;
plot(t,y2,'g');  hold on;
plot(t,y3,'r');  hold on;
plot(t,y4,'y');  hold on;
axis([0 0.025 -7 7]);

xlabel('Time(pi)');
ylabel('y');
grid;