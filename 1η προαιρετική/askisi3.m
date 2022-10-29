katatheseis=input('Katatheseis tou pelath:');
poso=input('Poso analipsis:');
if poso<=katatheseis
    katatheseis=katatheseis-poso;
    fprintf('To poso ths analipsis einai: %f.\n',poso)
    fprintf('To ypoloipo einai: %f.\n',katatheseis)
else disp('To poso analipsis ypervenei tis katatheseis tou pelath.')
end