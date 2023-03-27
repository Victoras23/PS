a = [1 4 2];
b = [1 2 3 4 5 4 3 3 2 2 1 1];
c = conv(a, b);

n1 = 1:length(a);
n2 = 1:length(b);
n3 = 1:length(c);

subplot(3, 1, 1);
stem(n1, a);
xlabel('Indexul de timp n');
ylabel('Amplitudinea');
title('Semnalul de intrare a');

subplot(3, 1, 2);
stem(n2, b);
xlabel('Indexul de timp n');
ylabel('Amplitudinea');
title('Raspunsul la impulsul unitate b');

subplot(3, 1, 3);
stem(n3, c);
xlabel('Indexul de timp n');
ylabel('Amplitudinea');
title('Convoluția a și b');