a = [-2 0 1 -1 3];
b = [1 2 0 -1];
d = 5;
n = 1:1:d;
c = 4;
l = 1:1:c;

subplot(2,1,1);
stem(n,a);
xlabel('Indexul de timp n'); ylabel('Amplitudinea')
title('Secventa a')

subplot(2,1,2);
stem(l,b);
xlabel('Indexul de timp n'); ylabel('Amplituda')
title('Secventa b')

k = 1:1:8;
m = 8;
c = conv(a,b);

figure;
stem(k,c);
xlabel('Indexul de timp n'); ylabel('Amplituda')
title('Convoluția a și b')
axis([0 8 -10 10]);