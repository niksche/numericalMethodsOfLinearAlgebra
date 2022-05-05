function x = gaussSeidel(A, b)
    F = -triu(A, 1);
    E = -tril(A, -1);
    D = diag(diag(A));
    n = length(A);
    M = inv(D-E) * F;
    if (norm(M) > 1)
        disp(M);
        disp("||M|| = ");
        disp(norm(M));
        disp(" > 1  -  решение не сходится");

    end

    eps = 0.0001;
    x = [0 0 0 0 0]';
    n = length(A);

    for i = 1:100000
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
    
%A(1,3)  = A(1,3) + 0.05;
%A(3,1) = A(3,1) + 0.05;