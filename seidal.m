
%% Algorithm: Gauss Seidel Method
%%
function x = seidal(A,x,b)
    n = length(A);
    for j=1:n
        d = b(j);
        for i=1:n-1
           if (j ~= i)
               d = d - A(j,i)*x(i);
           end
        end
        x(j) = d/A(j,j);
    end
end
