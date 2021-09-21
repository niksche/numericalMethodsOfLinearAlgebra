function x = gs(A, b)
    eps = 0.1;
    x = [0 0 0 0 0]';
    n = length(A);
    
    for i = 1:10000
        for j = 1:n
            s1 = sum(A(j,:)*x);
            s2 = A(j,j)*x(j);
            x(j) = (b(j) - s1 + s2)/A(j,j);
        end
            
        if (max(abs(A*x- b)) < eps)
            disp(x);
            break;
        end
    end
    
end