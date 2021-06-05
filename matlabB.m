%Part B
load('LPF.mat');
w = linspace(-pi,pi,80);
%h2
subplot(2,2,1);
fft_h2 = fftshift(fft(h2));
plot(w,abs(fft_h2));
title('Transfer Function H2')
xlabel('\omega [rad/sec]');
ylabel('H2');

%h3
subplot(2,2,2);
fft_h3 = fftshift(fft(h3));
%plot(w,abs(fft_h3));
title('Transfer Function H3')
xlabel('\omega [rad/sec]');
ylabel('H3');

%h4
subplot(2,2,3);
fft_h4 = fftshift(fft(h4));
%plot(w,abs(fft_h4));
title('Transfer Function H4')
xlabel('\omega [rad/sec]');
ylabel('H4');

%h6
subplot(2,2,4);
fft_h6 = fftshift(fft(h6));
%plot(w,abs(fft_h6));
title('Transfer Function H6')
xlabel('\omega [rad/sec]');
ylabel('H6');

close;
%b
w = linspace(-pi,pi,2*10000+1);
n = -10000:10000;
xn = cos((2.*pi./5).*n) + cos(((pi)./5).*n);
fft_xn = fftshift(fft(xn));
plot(w,abs(fft_xn));
title('x[n] DTFT')
ylabel('X(e^(j\omega))');
xlabel('\omega [rad/sec]');

%d
yn2 = cos((2.*pi./5).*n) + cos(((pi)./5).*n);
fft_yn2 = fftshift(fft(yn2));
yn3 = cos(((pi)./5).*n);
fft_yn3 = fftshift(fft(yn3));
yn4 = cos(((pi)./5).*n);
fft_yn4 = fftshift(fft(yn4));
yn6 = 0;
fft_yn6 = fftshift(fft(yn6));
w = linspace(-pi,pi,2*10000+1);
n = -10000:10000;
plot(w,abs(fft_yn2));
title('x[n] DTFT')
ylabel('X(e^(j\omega))');
xlabel('\omega [rad/sec]');
%h2
subplot(2,2,1);
plot(w,abs(fft_yn2));
title('output signal Yn2')
xlabel('\omega [rad/sec]');
ylabel('Yn2');

%h3
subplot(2,2,2);
plot(w,abs(fft_yn3));
title('output signal Yn3')
xlabel('\omega [rad/sec]');
ylabel('Yn3');

%h4
subplot(2,2,3);
plot(w,abs(fft_yn4));
title('output signal Yn4')
xlabel('\omega [rad/sec]');
ylabel('Yn4');

%h6
subplot(2,2,4);
plot(w,abs(fft_yn6));
title('output signal Yn6')
xlabel('\omega [rad/sec]');
ylabel('Yn6');
clear;
close;
%e
w = linspace(-pi,pi,2*10000+1);
n = -10:10;
xn = cos((2.*pi./5).*n) + cos(((pi)./5).*n);
yn2 = cos((2.*pi./5).*n) + cos(((pi)./5).*n);
yn3 = cos(((pi)./5).*n);
yn4 = cos(((pi)./5).*n);
yn6 = 0;
%h2
subplot(2,2,1);
plot(n,abs(yn2));
hold on
plot(n, abs(xn));
hold off
title('x[n] and y_3[n]')
xlabel('n [sec]');
ylabel('y_2n');

%h3
subplot(2,2,2);
plot(n,abs(yn3));
hold on;
plot(n, abs(xn));
hold off;
title('x[n] and y_3[n]')
xlabel('n [sec]');
ylabel('y_3n');

%h4
subplot(2,2,3);
plot(n,abs(yn4));
hold on;
plot(n, abs(xn));
hold off;
title('x[n] and y_4[n]')
xlabel('n [sec]');
ylabel('y_4n');
%h6
subplot(2,2,4);
%stem(n,abs(yn6));
%hold on;
plot(n, abs(xn));
%hold off;
title('x[n] and y_6[n]')
xlabel('n [sec]');
ylabel('y_6n');

%f


