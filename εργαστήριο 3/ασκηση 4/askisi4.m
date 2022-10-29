fid=fopen('pinakas.txt','r');
A=fscanf(fid,'%d',[5 3])'
status=fclose(fid);
mesitimi=mesi(A);
fprintf('H mesi timi ton oron einai: %f.\n',mesitimi)