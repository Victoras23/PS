x=-0.5:0.1:0.3;
y=[-2.2 -1.2 0.5 1.8 1.7 -0.6 -1.4 -2.1 -3];
stem(x,y); hold
x1=-0.5:0.01:0.3;
y2=spline(x,y,x1);
plot(x,y,x1,y2), grid, set (gca,'FontName', ...
'Arial Cyr','FontSize',16)
title('Aproximarea cubic spline ycs')
xlabel('Argumentul'),ylabel('functia'),grid
