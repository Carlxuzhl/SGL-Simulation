function Lw = L_op(w)
    l = length(w);
    p = ceil(sqrt(2*l));
    Lw = zeros(p,p);
    for i=1:p
        for j=1:p
            if i>j
                d_j = -j+(j-1)/2*(2*p-j);
                Lw(i,j) = -w(i+d_j);
                Lw(j,i) = Lw(i,j);
            end
        end
    end
    for i=1:p
        for j=1:p
            if i==j
            Lw(i,j) = -sum(Lw(i,:));
            end
        end
    end
end

