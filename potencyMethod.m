function [lamd, v] = potencyMethod(A)
    r = [1 1 1 1 1]';
    S = 10;
    eps = 0.00001;
    while S > eps
        r = (A*r)/(norm(A*r));
        lamd = (r'*A*r)/(r'*r); 
        S = norm(A*r-lamd*r);
    end
    v = r;
end

%%
% $x^2+e^{\pi i}$ 
% 
% $$e^{\pi i} + 1 = 0$$
% 
% $$e^{\pi i} + 1 = 0$$
% 
% 