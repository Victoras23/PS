R = 50;
m = 0:1:R-1;
M = 3;
b = ones(M,1)/M

d = rand(1,length(m))-0.5;
s = 2*m.*(0.9.^m) ;
x = s+d;

y = filter(b,1,x)
...stem(m,d), grid, set (gca,'FontName', ...
...'Arial Cyr','FontSize',16)
plot (m, s, '-', 'color', 'r');
hold on 
plot (m, x, '-', 'color', 'g');
hold on
plot (m, y, '-', 'color', 'b');
legend('Semnalul initial', 'Suma semnalelor initiale si celiu generat cu functia rand', 'Semnalul filtrat');
xlabel('Indecsul de timp n'); ylabel('Amplitudinea');
title('Compararea semnalelor');
