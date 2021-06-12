%PartA

%d
n = -10:10;
sympref('HeavisideAtOrigin', 1);
h = (((0.5).^n.*heaviside(n)) + ((0.75).^n.*heaviside(n-2)));
plot(n,h);
title('h[n]');
xlabel('n[sec]');
ylabel('h[n]');

%E - Transfer function

syms n;
h = (((0.5).^n.*heaviside(n)) + ((0.75).^n.*heaviside(n-2)));
H = ztrans(h); 
z = -10:10;
h1=1-(3./(4.*z))+9./(16.*z.^2)-9./(32.*z.^3);
h2=1-(3./(4.*z))-(1./(2.*z))+(3./(8.*z.^2));
%H =h1./h2;
plot(z,H)
title('Transfer Function')
xlabel('n [sec]'),ylabel('|Transfer function|');

%F - pole zero map
numerator = [32,-24,18,-9];
denominator = [32,-40,12,0];
ts = 1;
%sys = tf(numerator,denomanator,ts);
sys = tf(H);
pzmap(sys)






