clear;
clf;

%number of nodes per cluster
n = 60;

%load two_moon dataset
two_moon = importdata('two_moon.mat');
data_x = [two_moon.xs';two_moon.xc'];
data_y = [two_moon.s1';two_moon.c1'];
data = [data_x data_y];
%normalization
data = zscore(data);
%show true data points
scatter(data(:,1),data(:,2));

%number of components
k = 2;

%compute sample correlation matrix
S = data*data';

%estimate underlying graph
L = SGL(S,k,0,1e4,0.5,0.1,'naive',1e-3,1e4);
%generate adjacency matrix
A = -L + diag(diag(L));
plot(graph(A));
