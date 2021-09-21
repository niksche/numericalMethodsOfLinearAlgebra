function x = GaZey(A,b)
n = length(A);
x = b;
e = 0.1;
for s = 1:1000
 for j=1:n
 x(j)=(b(j)-A(j,[1:j-1,j+1:n])*x([1:j-1,j+1:n]))/A(j,j);
 end
 if max(abs(A*x-b))<e
 break;
 end
 
end
end