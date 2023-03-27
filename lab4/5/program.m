a = [-2 0 1 -1 3];
b = [1 2 0 -1];

k = 1:1:8;
c = conv(a,b);

y1 = ifft(p);

error = c - y1;

figure;
subplot(3,1,1);
stem(k, c);
xlabel('Indexul de timp n'); ylabel('Amplituda');
title('Semnalul convoluției inițiale');

subplot(3,1,2);
stem(k, y1);
xlabel('Indexul de timp n'); ylabel('Amplituda');
title('Semnalul convoluției obținute');

subplot(3,1,3);
stem(k, error);
xlabel('Indexul de timp n'); ylabel('Eroarea');
title('Eroarea dintre cele două semnale');