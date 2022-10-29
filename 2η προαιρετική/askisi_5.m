k=input('Pliktrologiste to plithos ton mathiton:');
arista=0;
metria=0;
kala=0;
polykala=0;
n=k;
%to plithos tha prepei na einai akeraio
while k>1
    k=k-1;
end
if k==1
 for i=1:n
    vathmos=input('Pliktroloste to vathmo tou mathiti:');
    if vathmos>=0 & vathmos<=20
        if vathmos>9 & vathmos<=12
            metria=metria+1;
            fprintf('O vathmos tou %dou mathiti einai: %d.\n',i,vathmos)
            disp('Metria')
        elseif vathmos>12 & vathmos<=15
            kala=kala+1;
            fprintf('O vathmos tou %dou mathiti einai: %d.\n',i,vathmos)
            disp('Kala')
        elseif vathmos>15 & vathmos<=18
            polykala=polykala+1;
            fprintf('O vathmos tou %dou mathiti einai: %d.\n',i,vathmos)
            disp('Poly kala')
        elseif vathmos>18
            arista=arista+1;
            fprintf('O vathmos tou %dou mathiti einai: %d.\n',i,vathmos)
            disp('Arista')
        else fprintf('O vathmos tou %dou mathiti einai: %d.\n',i,vathmos)
        end
    else disp('Mi egkiri timi vathmou')
    end
 end
else disp('Mi egkiri timi plithous mathiton')
end
disp(' ')
fprintf('To plithos tis kathe katigorias einai: %d metria, %d kala, %d poly kala, %d arista.\n',metria,kala,polykala,arista)
fprintf('To plithos ton mathiton einai: %d.\n',n) 