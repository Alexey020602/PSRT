clear
clc
InpArr=[1 2 2 3 4 4 5 6 6 7 7; 3 3 6 2 3 5 1 1 7 6 5; 0.1 0.6 0.3 0.9 0.2 0.8 0.9 0.2 0.9 0.8 0.1];
%InpArr([1 2 5 7], [1 2 5 7])=[0 1 1 1;1 0 1 0; 1 1 0 0; 0 0 0 0];
lambda=BuildMatrixArr(InpArr);
sz=size(lambda, 1);
lambda_exp=[1 5 0.24 -0.4 0.004]';
P_0=zeros(sz,1);
P_0(1,1)=1
fun=@(p,t) P_diff(p,lambda, lambda_exp, t);
P=Runge_Kutta(0, 0.5, 50, fun, P_0);
P(:,:)'
P_end=P(:, 1:10:101)'
plot(1:11, P_end');