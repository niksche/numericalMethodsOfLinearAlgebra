function lambda = Kir(A)

    x = [1 1 1 1 1]';
    eps = 0.001; % Погрешность
    % %Зададим критерий останова
    S = 1000;
    k = 0;
    %Цикл решений
    while S > eps
        x = A*x;
        x = x/norm(x);
        lambda = x'*A*x; %Считаем по соотношению Рэлея
        S = norm(A*x-lambda*x);
        k = k + 1;
    end

end
