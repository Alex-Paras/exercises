format short g
a=input('Pliktrologiste to a:');
b=input('Pliktrologiste to b:');
f=inline('23.8296-log(760)+3480.3./T-5.081*log(T)');
df=inline('-3480.3./T.^2-2.207./T');
T=a:0.001:b;
out=bisect_m(f, a, b, 1/2*10^-2, 100);
o=max(out); %topothetisi ths prosegisis se metabliti gia thn methodo n-r
p=o(1,1); %-//-
g=out(p,2);%-//-
out=rf_newton2(f, df, g, 1/2*10^-6,100);
o=max(out); %topothetisi ths prosegisis se metabliti
p=o(1,1); %-//-
g=out(p,2);%-//-
y1=23.8296-log(760)+3480.3./T-5.081*log(T);
graph_f(T,y1,g,f)