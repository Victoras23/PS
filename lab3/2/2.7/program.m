R = 1;
m = 0:0.001:R;
M = 20;

b = ones(M,1)/M;

d = rand(1,length(m))-0.5;
s = 2*cos(3*pi*m+pi/6)
x = s+d;

y = filter(b,1,x);

...stem(m,d), grid, set (gca,'FontName', ...
...'Arial Cyr','FontSize',16)
plot (m, s, '-', 'color', 'r');
hold on 
plot (m, x, '-', 'color', 'g');
hold on
plot (m, y, '-', 'color', 'b');
legend('Semnalul initial', 'Suma semnalelor initiale si celiu generat cu functia rand', 'Semnalul filtrat');
xlabel('Indexul de timp n'); ylabel('Amplitudinea');
title('Compararea semnalelor');
