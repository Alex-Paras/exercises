ores=input('Oi ores ergasias mesa stin imera einai:');
if ores<=24 && ores>0 %o artmos ton oron prepei na einai mikroteros h isos ths mias hmeras.
 amoibi=50*ores;
 amoibiy=0;
 sinoliki=amoibi;
 yperories=ores-18;
 if yperories>0
    amoibi=50*(ores-yperories);
    amoibiy=70*yperories;
    sinoliki=amoibi+amoibiy;
 end
 fprintf('Kanoniki amoibi: %f.\n',amoibi)
 fprintf('Amoibi yperiorion: %f.\n',amoibiy)
 fprintf('Sinolikes apodoxes: %f.\n',sinoliki)
else disp('Mi egkiros arithmos oron.')
end