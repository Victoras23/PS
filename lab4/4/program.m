a = [-2 0 1 -1 3];
b = [1 2 0 -1];
m = length(a) + length(b) - 1;

AE = fft(a, m);
BE = fft(b, m);

p = AE .* BE;

y1 = ifft(p);

k = 1:1:m;

figure;
stem(k, y1);
xlabel('Indexul de timp n'); ylabel('Amplituda');
title('Convoluția semnalelor a și b');