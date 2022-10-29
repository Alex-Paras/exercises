x=input('Pliktrologiste mia timi gia to x:');
sinartisi=menu('Epilekste sinartisi','sin(x)','cos(x)','tan(x)');
if sinartisi==1
    fprintf('H timi ths sinartisis einai: %f\n',sin(x))
elseif sinartisi==2
    fprintf('H timi ths sinartisis einai: %f\n',cos(x))
else %periorismoi ton timon tou x gia thn tan(x)
    z=x;
    if x>pi/2
        while x>pi/2
            x=x-pi;
        end
        if x==pi/2
            disp('H sinartisi tan(x) den orizete')
        else fprintf('H timi ths sinartisis tan(x) einai: %f\n',tan(z))
        end
    elseif x<-pi/2
        while x<-pi/2
            x=x+pi;
        end
        if x==-pi/2
            disp('H sinartisi tan(x) den orizete')
        else fprintf('H timi ths sinartisis tan(x) einai: %f\n',tan(z))
        end
    else 
        if x==pi/2 || x==-pi/2
            disp('H sinartisi tan(x) den orizete')
        else fprintf('H timi tis sinartisis einai: %f\n',tan(x))
        end
    end
end