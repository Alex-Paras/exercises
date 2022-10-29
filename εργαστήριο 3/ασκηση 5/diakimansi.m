function s=diakimansi(plithos,dianisma,mesitimi)
    %ypologismos diakimansis
    s=0;
    for i=1:plithos
         s=s+1/plithos*dianisma(i)^2;
    end
    s=s-mesitimi^2/plithos;
end