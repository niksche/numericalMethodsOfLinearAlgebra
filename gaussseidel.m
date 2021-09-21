
%% Algorithm: Gauss Seidel Method
%%
function x = gaussseidel(A,b)
    x=[0 0 0 0 0]'
    n=size(A,1);
    normVal=Inf; 
    tol=1e-5; itr=0;
    while normVal>tol
        x_old=x;
        for i=1:n
            sigma=0;
            for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
            end
            for j=i+1:n
                sigma=sigma+A(i,j)*x_old(j);
            end
            x(i)=(1/A(i,i))*(b(i)-sigma);
        end
    itr=itr+1;
    normVal=norm(x_old-x);
    end
end
