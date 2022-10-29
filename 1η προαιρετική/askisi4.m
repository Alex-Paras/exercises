a=input('Pliktrologiste ton 1o arithmo:');
b=input('Pliktrologiste ton 2o arithmo:');
c=input('Pliktrologiste ton 3o arithmo:');
d=input('Pliktrologiste ton 4o arithmo:');
A=[a,b,c,d];
mo=mean(A);
fprintf('O mesos oros einai: %f.\n',mo)
if mo>15
    disp('Epitixon')
end