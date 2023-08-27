pause(0.5);
x = sinegen(523, 8000, 0.5);
pause(0.5);
x = sinegen(587, 8000, 0.5);
pause(0.5);
x = sinegen(659, 8000, 0.5);
pause(0.5);
x = sinegen(698, 8000, 0.5);
pause(0.5);
x = sinegen(784, 8000, 0.5);
pause(0.5);
x = sinegen(880, 8000, 0.5);
pause(0.5);
x = sinegen(987, 8000, 0.5);
pause(0.5);
x = sinegen(1046, 8000, 0.5);
pause(0.5);
plot(t,x,'r-')
axis([0 0.05 -1.1 1.1]);
xlabel('time(s)')
str = sprintf('Ten cycles of %g Hz sine wave', f);
title(str)
sound(x)