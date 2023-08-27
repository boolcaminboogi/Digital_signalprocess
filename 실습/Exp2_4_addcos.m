t=0:0.001:1;

x=(5*cos(5*pi*t))+(5*cos(5*pi*t+2/3*pi))+(5*cos(5*pi*t-2/3*pi));
y=(5+10*cos(2/3*pi))*cos(5*pi*t);

subplot(3,1,1);
plot(t,x,'r'); hold on;
plot(t,y,'b'); hold on;

%subplot(3,1,2)
%plot(t,y,'r');

%subplot(3,1,3)
%plot(t,y,'b');