a = [-2 0 1 -1 3];
b = [1 2 0 -1];
m = length(a) + length(b) - 1;

AE = fft(a, m);
BE = fft(b, m);

p = AE .* BE;

k = 1:1:m;
figure;
stem(k,p);
xlabel('Indexul de frecvență k'); ylabel('Amplituda');
title('Produsul Transformărilor Fourier ale secvențelor a și b');
