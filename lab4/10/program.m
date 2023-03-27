a = [1 4 2];
b = [1 2 3 4 5 4 3 3 2 2 1 1];

c_add = [c1(1:6) c1(7:8) + c2(1:2) c2(3:end)];

stem(m, c_add);
xlabel('Indexul de timp n');
ylabel('Amplitudinea');
title('Convoluția finală');