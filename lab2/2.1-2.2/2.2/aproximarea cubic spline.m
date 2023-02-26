x=-0.5:0.1:0.3;
y=[-1.1 0.2 0.5 0.8 0.7 0.6 0.4 0.1 -1];
stem(x,y); hold
x1=-0.5:0.01:0.3;
y2=spline(x,y,x1);
plot(x,y,x1,y2), grid, set (gca,'FontName', ...
'Arial Cyr','FontSize',16)
title('Aproximarea cubic spline')
xlabel('Argumentul'),ylabel('functia'),grid
