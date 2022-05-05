function [U,S,V] = svdDecomposition(A)
        A(3,1)=A(3,1)+0.05;
        A(1,3)=A(1,3)+0.05;
        R=A'*A;
        [V,S,U]=eig(R);              
        j=5;
        for i=1:2        
                buff=U(:,i);
                U(:,i)=U(:,j);
                U(:,j)=buff;
                buff=V(:,i);
                V(:,i)=V(:,j);
                V(:,j)=buff;                
                buffS=S(i,i);
                S(i,i)=S(j,j);
                S(j,j)=buffS;
                j=j-1;
        end
        S=sqrt(S);
        disp('Матрица левых сингулярных векторов')
        disp(U);
        disp('Матрица c сингулярными числами')
        disp(S);
        disp('Матрица правых сингулярных векторов')
        disp(V);

        B=U*S*V';
        %Невязка
        dis=B-A;
        %Норма невязки
        norm(dis);

end
