for h=1:6
    A(h,1)=h;
    for v=2:6
        if A(h,v-1)+A(h,1)>A(h,1)^2
            break
        end
        A(h,v)=A(h,v-1)+A(h,1);
    end
end
A