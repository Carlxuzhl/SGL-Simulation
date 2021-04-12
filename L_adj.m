function w = L_adj(Y)
    p = size(Y,1);
    w = zeros(p*(p-1)/2,1);
    for i=1:p
        for j=1:p
            if i>j
                k = i-j+(j-1)/2*(2*p-j);
                w(k) = Y(i,i)-Y(i,j)-Y(j,i)+Y(j,j);
            end
        end
    end
end

