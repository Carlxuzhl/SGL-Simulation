function w = Linv(M)
%computes the inverse of the L operator
%return w the weight vector of the graph
    n = size(M,2);
    k = 0.5*n*(n-1);
    w = zeros(k,1);
    l = 1;
    for i=1:n-1
        for j=i+1:n
            w(l) = -M(i,j);
            l = l+1;
        end
    end
end

