R = 1;
m = 0:0.001:R;
M20 = 20;
M50 = 50;
M100 = 100;
b20 = ones(M20,1)/M20;
b50 = ones(M50,1)/M50;
b100 = ones(M100,1)/M100;

d = rand(1,length(m))-0.5;
s = 2*cos(3*pi*m+pi/6)
x = s+d;

y20 = filter(b20,1,x);
y50 = filter(b50,1,x);
y100 = filter(b100,1,x);
...stem(m,d), grid, set (gca,'FontName', ...
...'Arial Cyr','FontSize',16)
plot (m, s, '-', 'color', 'r');
hold on 
plot (m, x, '-', 'color', 'g');
hold on
plot (m, y20, '-', 'color', 'b');
hold on
plot (m, y50, '-', 'color', 'k');
hold on
plot (m, y100, '-', 'color', 'y');
legend('Semnalul initial', 'Suma semnalelor initiale si celiu generat cu functia rand', 'Semnalul filtrat M = 20', 'Semnalul filtrat M = 50', 'Semnalul filtrat M = 100');
xlabel('Indexul de timp n'); ylabel('Amplitudinea');
title('Compararea semnalelor');
