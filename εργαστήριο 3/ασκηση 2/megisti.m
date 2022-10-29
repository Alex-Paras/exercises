function max=megisti(dianisma)
    %Evresh megistis timis dianismatos
    max=dianisma(1);
    for i=1:5
        if dianisma(i)>=max
           max=dianisma(i);
        end
    end      
end