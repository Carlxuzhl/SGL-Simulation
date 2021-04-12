Simulation of the SGL(Structured Graph Learning) algorithm

Reference: *A Unified Framework for Structured Graph Learning via Spectral Constraints*
(Sandeep Kumar, Jiaxi Ying, José Vinícius de M. Cardoso, Daniel Palomar)

1.scripts

SGL.m: the main algorithm \\
example.m: a tiny example of a 4*4 laplacian matrix input
twomoon_example.m: an example applying SGL algorithm to cluster the twomoon dataset(k=2)

2.associated functions

L_op.m: the L operator
L_adj.m: the L* operator
Linv.m: compute the inverse of the L operator
vecLmat.m: return R matrix such that vec(L(w)) = Rw
w_init.m: initialize an appropriate w
w_update.m: update w
U_updte.m: update U
Alg1.m: update lambda

3.dataset

two_moon.mat: the twomoon dataset for clustering task# SGL-Simulation
