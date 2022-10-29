a=input('Pliktrologiste ton sintelesth a:');
b=input('Pliktrologiste ton sintelesth b:');
c=input('Pliktrologiste ton sintelesth c:');
d=b^2-4*a*c;
if d>0
    x(1)=(-b+sqrt(d))/(2*a);
    x(2)=(-b-sqrt(d))/(2*a);
    fprintf('Oi liseis ths eksisosis einai: x(1)=%f kai x(2)=%f.\n',x(1),x(2))
elseif d==0
    x=-b/(2*a);
    fprintf('H lisi ths eksisosis einai: x=%f.\n',x)
else disp('H eksisosi den exei lisis sto R.')
end