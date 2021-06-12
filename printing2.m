%F - pole zero map
sympref('HeavisideAtOrigin', 1);
h = (((0.5).^n.*heaviside(n)) + ((0.75).^n.*heaviside(n-2)));
H = ztrans(h);
[numerator, denominator] = numden(H);
numerator_c = sym2poly(numerator);
denominator_c = sym2poly(denominator);
ts = 1;
sys = tf(numerator_c,denominator_c,ts);
pzmap(sys)
