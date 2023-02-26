x=[1 2 3 4 5 6 7 8 9];
y=[-1.1 0.2 0.5 0.8 0.7 0.6 0.4 0.1 -1];
p1=polyfit(x,y,1);
p2=polyfit(x,y,2);
p3=polyfit(x,y,3);
p4=polyfit(x,y,4);
stem(x,y); hold
x1=0.5:0.05:9.5;
y1=polyval(p1,x1);
y2=polyval(p2,x1);
y3=polyval(p3,x1);
y4=polyval(p4,x1);
plot(x1,y1,x1,y2,x1,y3,x1,y4), grid, set(gca,'FontName','Arial Cyr','FontSize',16);
title('Aproximarea polinomiala');
xlabel('Argumentul'),ylabel('functia'),grid;
