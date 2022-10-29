function out=bisect_m(f, a, b, tol,n)
t=tic;
if f(a)*f(b)>0.0
error('function has same sign at end points')
end
a(1)=a;
b(1)=b;
i=1;
while i<=n
     c(i)=(a(i)+b(i))/2;
     if i>2
      e(i)=abs(c(i)-c(i-1)); %apolito sfalma
      z(i)=e(i)/abs(c(i)); %apolito sxetiko sfalma
      l(i)= e(i)/e(i-1)^2; %logos e(n)/e(n-1)^2
     end
%      if f(c(i))==0 || (b(i)-a(i))/2<tol
     if  abs(f(c(i)))<tol      
         break;
     end
     if f(a(i))*f(c(i))>0
        a(i+1)=c(i);
        b(i+1)=b(i);
     else
        a(i+1)=a(i);
        b(i+1)=c(i);
     end
     i=i+1;
end
if i>n
    k=1:n;
else
    k=1:i;
end
S=toc(t);
fprintf('O xronos ekteleshs ths methodou dixotomhshs einai: %f.\n',S)
fprintf('\n')
fprintf('                      c(n)        e(n)      e(n)/c(n)     e(n)/e(n-1)^2\n')
out=[k', c(k)',e(k)',z(k)',l(k)']