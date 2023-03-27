a=[-2  0  1  -1  3];
b=[1 2 0 -1];
d=5;
n=1:1:d;
c=4;
l=1:1:c;
subplot(2,1,1);
stem(n,a);
xlabel('Indexul de timp n'); ylabel('Amplitudinea')
title('Secventa a')
subplot(2,1,2);
stem(l,b);
xlabel('Indexul de timp n'); ylabel('Amplituda')
title('Secventa b')
