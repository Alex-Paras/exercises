function pisoSOR(A,b,x0,tol,maxits)

disp('METHODOS PROS TA PISO SOR');

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
omega=2.0/(1.0+sqrt(1-rB*rB));
fprintf('H beltisti timi toy omega einai: %f.\n',omega)
Lsor=I-omega*inv((I-omega*U))*inv(D)*A %pinakas SOR     
id2=eig(Lsor);     
rLsor=max(abs(id2));
fprintf('H fasmatiki aktina tou pinaka ths pros ta piso SOR einai: %f.\n',rLsor)


while itcount<=maxits
   x0=x1;
    disp('x0'); disp(x0); 
    x1=inv(I-omega*U)*((1-omega)*I+omega*L)*x0+omega*inv(I-omega*U)*D1*b;
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