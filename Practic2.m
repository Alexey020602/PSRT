clear
clc
InpArr=[1 2 2 3 4 4 5 6 6 7 7; 3 3 6 2 3 5 1 1 7 6 5; 0.1 0.6 0.3 0.9 0.2 0.8 0.9 0.2 0.9 0.8 0.1];
%InpArr([1 2 5 7], [1 2 5 7])=[0 1 1 1;1 0 1 0; 1 1 0 0; 0 0 0 0];
Mat=BuildMatrixArr(InpArr);
sz=size(Mat, 1);
P=zeros(1, sz);
P(1)=1;
P=P';