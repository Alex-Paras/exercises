%evresi arithmon akolouthias fibonacci
a(1)=1;
a(2)=1;
for i=3:5000
    if a(i-1)+a(i-2)<5000
       a(i)=a(i-1)+a(i-2);
    else break
    end  
    %evresi timon logon diadoxikon arithmon akolouthias fibonacci
    b(i-2)=a(i-2)/a(i-1);
end
disp('Arithmoi tis akolouthias fibonacci mikroteron tou 5000.')
a
disp('Logoi diadoxikon arithmon.')
b