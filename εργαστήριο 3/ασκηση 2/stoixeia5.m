function plithos=stoixeia5(dianisma)
    %Evresh stoixeion pou einai megalitera tou 5.
    [n o]=diastaseis(dianisma);
    plithos=0;
    for i=1:o
        if dianisma(i)>5
            plithos=plithos+1;
        end
    end
end