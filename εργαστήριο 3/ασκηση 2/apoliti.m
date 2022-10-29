function A2=apoliti(dianisma)
    %Evresh apolitis timis kathe stoixeiou enos dianismatos
    for i=1:5
        if dianisma(i)<0
           dianisma(i)=-dianisma(i);
        end
    end
    A2=dianisma
end