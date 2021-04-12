function R = vecLmat(n)
    %return R matrix such that vec(L(w)) = Rw
    ncols = 0.5*n*(n-1);
    nrows = n*n;
    e = zeros(ncols,1);
    R = zeros(nrows,ncols);
    e(1) = 1;
    R(:,1) = reshape(L_op(e),size(L_op(e),1)*size(L_op(e),2),1);
    for i=1:ncols-1
        e(i) = 0;
        e(i+1) = 1;
        R(:,i+1) = reshape(L_op(e),size(L_op(e),1)*size(L_op(e),2),1);
    end
end

