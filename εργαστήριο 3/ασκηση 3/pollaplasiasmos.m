function AxB=pollaplasiasmos(pinakas1,pinakas2)
    %Evresi tou pinaka A*B
    [m n]=diastaseis(pinakas1);
    [l o]=diastaseis(pinakas2);
    if n==l
       C=zeros(m,o);
       for i=1:m
           for k=1:o
               for j=1:l
                   a=pinakas1(i,j)*pinakas2(j,k);
                   C(i,k)=C(i,k)+a;
               end
           end
       end
       disp('O pollaplasiasmos A*B dinei apotelesma:')
       AxB=C
    else disp('Oi diastaseis ton pinakon den tairiazoun.')
        AxB=[];
    end
end