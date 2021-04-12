function w0 = w_init(w,Sinv)
    n = size(Sinv,2);
    if(w == "qp")
        R = vecLmat(n);
        xf = quadprog(R'*R,R'*reshape(Sinv,size(Sinv,1)*size(Sinv,2),1),eye(size(R,2)),zeros(size(R,2),1));
        w0 = xf;
    elseif(w == "naive")
        w0 = Linv(Sinv);
        w0(w0<0) = 0;
    end
end

