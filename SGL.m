function Theta = SGL(S,k,c1,c2,beta,alpha,w0,eps,maxiter)
t = 0;
%number of nodes
n = size(S,1);
%find an appropriate initial guess
Sinv = pinv(S);
%initialize w
w0 = w_init(w0,Sinv);
Lw0 = L_op(w0);
%l1-norm penalty factor
H = alpha*(eye(n)-ones(n,n));
K = S + H;
%initialize U
U0 = U_update(Lw0,k);
%initialize lambda
lambda0 = Alg1(c1,c2,beta,U0,Lw0,k);
for i=1:maxiter
    %update w
    w = w_update(w0,Lw0,U0,beta,lambda0,K);
    Lw = L_op(w);
    %update U
    U = U_update(Lw,k);
    %update lambda
    lambda = Alg1(c1,c2,beta,U,Lw,k);
    %update estimates
    w0 = w;
    U0 = U;
    lambda0 = lambda;
    Lw0 = Lw;
    K = S+H/(-Lw+eps);
    %increase t
    t = t+1;
end
Theta = L_op(w);
end

