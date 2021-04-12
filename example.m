clear;
clf;

Laplacian = [1,-1,0,0;
             -1,1,0,0;
             0,0,1,-1;
             0,0,-1,1];
n = size(Laplacian,2);
rng default;
Y = mvnrnd(zeros(n,1),pinv(Laplacian),n*500);
S = cov(Y);
L = SGL(S,2,0,1e4,1e4,0,'naive',1e-4,1000);
disp(L);

         
         
         