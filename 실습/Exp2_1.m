%t = 0:1/fs:tdur;
%f=[264 297 330 352 396 440 495 528];
%x = sin(2*pi*f*t);

pause(1);
x = sinegen(261, 8000, 0.5);
pause(0.5);
x = sinegen(293, 8000, 0.5);
pause(0.5);
x = sinegen(329, 8000, 0.5);
pause(0.5);
x = sinegen(349, 8000, 0.5);
pause(0.5);
x = sinegen(392, 8000, 0.5);
pause(0.5);
x = sinegen(440, 8000, 0.5);
pause(0.5);
x = sinegen(493, 8000, 0.5);
pause(0.5);
x = sinegen(523, 8000, 0.5);
pause(0.5);


plot(t,x,'r-')
axis([0 0.05 -1.1 1.1]);
xlabel('time(s)')
str = sprintf('Ten cycles of %g Hz sine wave', f);
title(str)
sound(x)