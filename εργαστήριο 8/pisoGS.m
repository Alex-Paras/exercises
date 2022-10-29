function pisoGS(A,b,x0,tol,maxits)

disp('METHODOS piso GAUSS SAIDEL');

[n,n]=size(A);

x1=x0;

itcount=0;


CL=-tril(A, -1);
CU=-triu(A, 1);

I=eye(n);
D=diag(diag(A));
D1=inv(D);

L=D1*CL;
U=D1*CU;

B=L+U;
id1=eig(B);     %idiotimes pinaka Jacobi
rB=max(abs(id1));
Lgs=I-inv(I-U)*inv(D)*A %pinakas piso GS
id2=eig(Lgs);     
rLgs=max(abs(id2));
fprintf('H fasmatiki aktina tou pinaka ths piso GAUSS SAIDEL einai: %f.\n',rLgs)


while itcount<=maxits
   x0=x1;
    disp('x0'); disp(x0);   
    x1=inv(I-U)*L*x0+inv(I-U)*D1*b;
   fprintf('step %d\n',itcount)
   disp(x1)
   nm=norm(x1-x0, Inf); 
   disp('nm')
   disp(nm)
   if nm<tol  
       iter=itcount;
       fprintf('Siglisi se %d epanalipseis.\n',iter)
      break;   
   end
   itcount=itcount+1;
end % while
if nm>tol
    fprintf('Oxi siglisi meta apo %d epanalipseis.\n',maxits)
end
disp('x1'); disp(x1);