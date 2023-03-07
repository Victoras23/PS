R = 50;
m = 0:1:R-1;
d=rand(1,length(m))-0.5;
...s = 2*m.*(0.9.^m) ;
stem(m,d), grid, set (gca,'FontName', ...
'Arial Cyr','FontSize',16)
xlabel('Indecsul de timp n'); ylabel('Amplitudinea')
title('Semnalul generat folosind functioa rand')
