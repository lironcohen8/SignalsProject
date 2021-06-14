clear;
clearvars;

T = 2;
points = 200;
t = linspace(-100,100,points);
n = linspace(-100,100,points/T);
x2 = cos(pi.*t./12)+sin(pi.*t./6);
xn2 = cos(pi.*n./12)+sin(pi.*n./6);
j=1;
for i = 1:length(t)
    if mod(i,T) == 0
       xs(i) = xn2(j);
       j = j+1;
    else
       xs(i) = 0;
    end
end 
ideal = conv(xs, sinc(t./T), 'same');
figure;
plot(t,ideal);
hold on;
plot(t,x2);
hold off;
title('xn_2 - Ideal')
ylabel('x_2');
xlabel('t[sec]');
axis([-50 50 -2 2]);

