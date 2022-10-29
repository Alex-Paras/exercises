function [m o]=diastaseis(pinakas)
    %evresi diastaseon pinaka   
    m=0;
    o=0;
    F=pinakas-pinakas;  
    L=F+1;
    if L~=F
       D=~F;
       G=[F D;D D];
       while G(m+1,1)~=1
             m=m+1;
       end
       while G(1,o+1)~=1
             o=o+1;
       end
    end
end