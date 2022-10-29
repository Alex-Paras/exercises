function out=rf_newton2(f, df, T1, tol, n)
d=tic;
T(1)=T1;
i=2;
while i<=n
    T(i)=T(i-1)-f(T(i-1))/df(T(i-1));
    e(i)=abs(T(i)-T(i-1)); %apolito sfalma
    z(i)=e(i)/abs(T(i)); %apolito sxetiko sfalma
    if i>2
     l(i)= e(i)/e(i-1)^2; %logos e(n)/e(n-1)^2
    end
    if  abs(T(i)-T(i-1))<tol    %abs(f(x(i)))<tol
        break;
    end
i = i + 1;
end
if i>n
    k=1:n;
else
    k=1:i;
end
E=toc(d);
fprintf('O xronos ekteleshs ths methodou N-R einai: %f.\n',E)
fprintf('\n')
fprintf('                      T(n)        e(n)      e(n)/T(n)     e(n)/e(n-1)^2\n')
  out=[k', T(k)',e(k)',z(k)',l(k)']