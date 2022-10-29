n=input('Pliktrologiste to plithos ton arithmon:');
x=apothikefsi(n);
mesitimi=mesi(x);
fprintf('H mesi timi einai: %f.\n',mesitimi)
s=diakimansi(n,x,mesitimi);
fprintf('H diakimansi einai: %f.\n',s)