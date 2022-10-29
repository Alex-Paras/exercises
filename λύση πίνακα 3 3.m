mat=input('pinakas:');
v=mat(:,4);
mat(:,4)=[];
n=det(mat)
G=mat;
mat(:,4)=v;
A=mat;
l=1;
    if n~=0
     mat=G;
     mat(:,4)=[1;0;0];
     mat(:,5)=[0;1;0];
     mat(:,6)=[0;0;1];
     if mat(1,1)~=0
      mat(1,:)=mat(1,:)/mat(1,1);
      a=mat(2,1)/mat(1,1);
      mat(2,:)=mat(2,:)-a*mat(1,:);
      b=mat(3,1)/mat(1,1);
      mat(3,:)=mat(3,:)-b*mat(1,:);
      if mat(2,2)~=0
      mat(2,:)=mat(2,:)/mat(2,2);
      c=mat(3,2)/mat(2,2);
      mat(3,:)=mat(3,:)-c*mat(2,:);
             if mat(3,3)~=0
                mat(3,:)=mat(3,:)/mat(3,3);
             end
      else
          if mat(3,2)~=0
             temp=mat(3,:);
             mat(3,:)=mat(2,:);
             mat(2,:)=temp;
             mat(2,:)=mat(2,:)/mat(2,2);
          else
             if mat(2,3)~=0
                mat(2,:)=mat(2,:)/mat(2,3);
             else
                 if mat(3,3)~=0
                 mat(3,:)=mat(3,:)/mat(3,3);
                 temp=mat(3,:);
                 mat(3,:)=mat(2,:);
                 mat(2,:)=temp;
                 end
             end
          end
      end
      if mat(2,2)~=0
          d=mat(1,2)/mat(2,2);
          mat(1,:)=mat(1,:)-d*mat(2,:);
          if mat(3,3)~=0             
              h=mat(2,3)/mat(3,3);
              mat(2,:)=mat(2,:)-h*mat(3,:);
              j=mat(1,3)/mat(3,3);
              mat(1,:)=mat(1,:)-j*mat(3,:);            
              mat(:,1)=[];
              mat(:,1)=[];
              mat(:,1)=[];            
          end
      end
     end
    end
    mat=A;
    if mat(1,1)==0
       if mat(2,1)~=0
          temp=mat(1,:);
          mat(1,:)=mat(2,:);
          mat(2,:)=temp;
       else 
            if mat(3,1)~=0
               temp=mat(1,:);
               mat(1,:)=mat(3,:);
               mat(3,:)=temp;
            else 
                if (mat(1,2)==mat(2,2) && mat(2,3)==mat(1,3) && mat(1,4)~=mat(2,4))||(mat(1,2)==mat(3,2) && mat(1,3)==mat(3,3) && mat(1,4)~=mat(3,4))||(mat(2,2)==mat(3,2) && mat(2,3)==mat(3,3) && mat(2,4)==mat(3,4))
                    disp('kamia lisi')
                else disp('apires lisis')
                    l=4;
                end
            end
       end
    end
 if mat(1,1)~=0 
    mat(1,:)=mat(1,:)/mat(1,1);
    a=mat(2,1)/mat(1,1);
    mat(2,:)=mat(2,:)-a*mat(1,:);
    b=mat(3,1)/mat(1,1);
    mat(3,:)=mat(3,:)-b*mat(1,:);
    if mat(2,2)~=0
    mat(2,:)=mat(2,:)/mat(2,2);
    c=mat(3,2)/mat(2,2);
    mat(3,:)=mat(3,:)-c*mat(2,:);
           if mat(3,3)~=0
              mat(3,:)=mat(3,:)/mat(3,3)
           end
    else
        if mat(3,2)~=0 
           temp=mat(3,:);
           mat(3,:)=mat(2,:);
           mat(2,:)=temp;
           mat(2,:)=mat(2,:)/mat(2,2);
        else
            if mat(2,3)~=0
                mat(2,:)=mat(2,:)/mat(2,3);
            else
                if mat(3,3)~=0
                mat(3,:)=mat(3,:)/mat(3,3);
                temp=mat(3,:);
                mat(3,:)=mat(2,:);
                mat(2,:)=temp;
                end
            end
        end
    end
 end
    n;
    mat
    if (mat(3,3)==0 && mat(3,4)~=0) || (mat(2,3)==0 && mat(3,3)==0 && mat(3,4)==0 && mat(2,4)~=0)
        disp('adinato')
    elseif mat(3,3)~=0 && l~=4
        z=mat(3,4)
        y=mat(2,4)-z*mat(2,3)
        x=mat(1,4)-y*mat(1,2)-z*mat(1,3)
    else disp('apires lisis')
    end