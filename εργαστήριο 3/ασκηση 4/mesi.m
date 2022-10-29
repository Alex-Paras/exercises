function mesitimi=mesi(pinakas)
    %evresi mesis timis oron pinaka
    [m o]=diastaseis(pinakas);
    n=m*o;
    mesitimi=athroisma(pinakas,n)/n;   
end