function x = sinegen(f, fs, tdur)

t = 0:1/fs:tdur;
x = sin(2*pi*f*t);
plot(t,x,'r-')
axis([0 0.05 -1.1 1.1]);
xlabel('time(s)')
str = sprintf('Ten cycles of %g Hz sine wave', f);
title(str)
sound(x)