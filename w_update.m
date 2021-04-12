function w_update = w_update(w,Lw,U,beta,lambda,K)
    c = L_adj(U*diag(lambda)*U'-K/beta);
    grad_f = L_adj(Lw)-c;
    M_grad_f = L_adj(L_op(grad_f));
    wT_M_grad_f = sum(w'*M_grad_f);
    dwT_M_dw = sum(grad_f'*M_grad_f);
    %exact line search
    t = (wT_M_grad_f-sum(c'*grad_f))/dwT_M_dw;
    w_update = w-t*grad_f;
    w_update(w_update<0) = 0;
end

