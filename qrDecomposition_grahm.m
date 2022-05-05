function x = qrDecomposition_grahm(A,b)
    r = zeros(size(A,1),size(A,2));
    [rows,cols] = size(A); 
    m = rows;
    n = cols;
    for k=1:n
        for i=1:k-1     
            s=0;
            for j=1:m
                s = A(j,i)*A(j,k);
                r(i,k)=s;
            end               
        end
        
        for i=1:k-1
            
            for j=1:m
                A(j,k)= A(j,k)- A(j,i)*r(i,k);
            end               
        end
        
        s=0;
        
        for j=1:m
            s= s + A(j,k).^2;
            r(k,k)=s.^0.5;
        end
        
        for j=1:m
            A(j,k)= A(j,k)/r(k,k);
        end
        
    end
    q = A;
    y = linsolve(q,b);
    x = linsolve(r,y);
end


