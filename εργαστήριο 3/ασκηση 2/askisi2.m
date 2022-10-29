A=randi([-10,10],1,5)
disp('Afairesh 3 monadon apo kathe stoixeio tou dianismatos:')
afairesh3(A);
disp('Evresh stoixeion pou einai megalitera tou 5:')
plithos=stoixeia5(A);
if plithos==1
fprintf('1 stoixeio tou arxikou dianismatos einai megalitero tou 5.\n')
else fprintf('%d stoixeia tou arxikou dianismatos einai megalitera tou 5.\n',plithos)
end
disp('Evresh apolitis timis kathe stoixeiou:')
apoliti(A);
disp('Evresh megistis timis dianismatos:')
max=megisti(A);
fprintf('To %d einai to megalitero stoixeio tou dianismatos.\n',max)