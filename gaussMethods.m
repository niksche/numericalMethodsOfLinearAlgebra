function g = gaussMethods(A)
    [rowsCount, colsCount ] = size(A);
    for k = 1:rowsCount
        iMax = k;
        valueMax = A(iMax, k);
        for i = k+1:rowsCount
            if A(i,k) > valueMax
                valueMax = A(i,k);
                iMax = i;
            end
        end
        if iMax ~= k 
            %swapRows
            A([k, iMax],:) = A([iMax, k],:);
        end

        for i = k+1:rowsCount
            f = A(i,k)/A(k,k);

            for j = k+1:rowsCount+1
                A(i,j) = A(i,j) - A(k,j)*f;
            end
            A(i,k) = 0;
        end

    end
    
    
    x = zeros(rowsCount,1);
    for i = rowsCount:-1:1
        x(i) = A(i, rowsCount+1);
        for j = i+1:rowsCount
            x(i) = x(i) - A(i, j)*x(j); 
        end
        x(i) = x(i)/A(i,i);        
    end
%    g = x(:,1);

%A = [2.0000 1.0004 0.6667 0.5000 0.4004;
%1.0004 0.6667 0.5000 0.4000 0.3333;
%0.6667 0.5000 0.4000 0.3333 0.2814;
%0.5000 0.4000 0.3333 0.2857 0.2500;
%0.4004 0.3333 0.2814 0.2500 0.2222];
%b = [0.0500;0.6167;0.7333;0.7429;0.7187];
end

