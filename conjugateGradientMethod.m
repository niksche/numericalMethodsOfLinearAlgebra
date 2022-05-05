function ep = conjugateGradientMethod(A,b) 
    eps = 0.000001;
    x0 = [0 0 0 0 0]';
    r0 = b - A*x0;
    z0 = r0;
    
    r = r0;
    z = r0;
    x = x0;
    z = z0;
    
    for k =1:10000
        rprev = r;
        zprev = z;
        alphk = (r'*r)/((A*z)'*z);
        x = x + alphk * z; 
        r = r - alphk * A*z;
        betta = (r'*r)/(rprev'*rprev);
        z = r + betta * zprev; 
        if (A*x - b) < eps 
            ep = A*x - b;
           break 
        end
    end
    
    
end