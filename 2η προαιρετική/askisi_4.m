TC=input('Pliktrologiste th thermokrasia tou psixrou tamieftira:');
TH=input('Pliktrologiste th thermokrasia tou thermou tamieftira:');
max=TH;
if TC>0 && TH>0
    if TC>TH
        max=TC;
        TC=TH;
        TH=max;
    elseif TC==TH
        disp('Mi egkires times thermokrasion')
    end
    h=1-TC/TH;
    fprintf('H apodosi Carnot einai: %1.3f.\n',h)
else disp('Mi egkires times thermokrasion')
end