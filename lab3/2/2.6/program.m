R = 50;
m = 0:1:R-1;
M3 = 3;
M5 = 5;
M10 = 10;
b3 = ones(M3,1)/M3;
b5 = ones(M5,1)/M5;
b10 = ones(M10,1)/M10;

d = rand(1,length(m))-0.5;
s = 2*m.*(0.9.^m) ;
x = s+d;

y3 = filter(b3,1,x);
y5 = filter(b5,1,x);
y10 = filter(b10,1,x);
...stem(m,d), grid, set (gca,'FontName', ...
...'Arial Cyr','FontSize',16)
plot (m, s, '-', 'color', 'r');
hold on 
plot (m, x, '-', 'color', 'g');
hold on
plot (m, y3, '-', 'color', 'b');
hold on
plot (m, y5, '-', 'color', 'k');
hold on
plot (m, y10, '-', 'color', 'y');
legend('Semnalul initial', 'Suma semnalelor initiale si celiu generat cu functia rand', 'Semnalul filtrat M = 3', 'Semnalul filtrat M = 5', 'Semnalul filtrat M = 10');
xlabel('Indexul de timp n'); ylabel('Amplitudinea');
title('Compararea semnalelor');
