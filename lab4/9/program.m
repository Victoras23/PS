a = [1 4 2];
b = [1 2 3 4 5 4 3 3 2 2 1 1];

b1 = b(1:6);
b2 = b(7:end);

c1 = conv(a, b1);
c2 = conv(a, b2);

c = [c1, c2(8:end)];

stem(c);
xlabel('Indexul de timp n');
ylabel('Amplitudinea');
title('Convoluția semnalului a pe blocuri');
