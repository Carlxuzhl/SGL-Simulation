function lambda = Alg1(c1,c2,beta,U,Lw,k)
    q = size(Lw,2)-k;
    d = diag(U'*Lw*U);
    %unconstrained solution as an initial point
    lambda = 1/2*(d+sqrt(d.^2+4/beta));
    eps = 1e-9;
    all_condition = (lambda(q)-c2<=eps)&(lambda(1)-c1>=-eps)&(lambda(2:q)-lambda(1:q-1)>=-eps);
    if(all_condition)
        return
    else
        lambda(lambda>c2) = c2;
        lambda(lambda<c1) = c1;
    end
    all_condition = (lambda(q)-c2<=eps)&(lambda(1)-c1>=-eps)&(lambda(2:q)-lambda(1:q-1)>=-eps);
    if(all_condition)
        return
    else
        disp(lambda);
        disp("eigenvalues are not in increasing order, consider increasing the value of beta");
    end
end

