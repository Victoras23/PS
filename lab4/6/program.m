d=54734;
c=54734;
m=d+c-1;

n=1:1:d;
l=1:1:c;
k=1:1:m;

a=2*square(20*pi*n+1);
b=3* sawtooth(20*pi*l+1);

tic
cv=conv(a, b);
toc

tic

AE = fft(a, m);
BE = fft(b, m);
p = AE.*BE;

y1=ifft(p);
toc

error=cv-y1;

subplot(3, 1,1);
stem(k,cv);
xlabel('Indexul de timp n');
ylabel('Amplitudinea');
title('Convolutia initiala');

subplot(3,1,2);
stem(k,y1);
xlabel('Indexul de timp n');
ylabel('Amplitudinea');
title('Transformarea Inversa Fourier');

subplot(3,1,3);
stem(k, error);
xlabel('Indexul de timp n');
ylabel('Amplituda');
title('Erroarea');