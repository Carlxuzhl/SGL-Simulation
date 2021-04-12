function U = U_update(Lw,k)
    [U,~] = eig(Lw);
    p = size(Lw,2);
    U = U(:,k+1:p);
end

