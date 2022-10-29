function graph_f(T,y1,g,f)
figure
plot(T,y1,'r-','MarkerSize',2)
xlabel ( 'Axonas x','FontName','Arial','FontSize',10); 
ylabel ( 'Axonas y','FontName','Arial','FontSize',10);
%legend('y1');
title( 'Grafiki parastasi','FontSize',10 );
hold on 
plot(g,f(g),'b*') %shmeiosh toy simioy brasmou sto grafima
legend('f','Simio Brasmou')