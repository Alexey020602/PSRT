clear
clc
%Mat=[1 2 2 3 4 5 5 6 7 4;2 3 7 1 7 3 6 5 4 6; 0.1 0.3 0.1 0.8 0.9 0.4 0.2 0.7 0.5 0.2];
Mat=[1 2 2 3 4 4 5 6 6 7 7; 3 3 6 2 3 5 1 1 7 6 5; 0.1 0.6 0.3 0.9 0.2 0.8 0.9 0.2 0.9 0.8 0.1];
B=FromArrToMat(Mat);
BuildMatrixMat(B)
A=BuildMatrixArr(Mat)
%P=Probabilities(A);
%E=Entropy(P);
%G=digraph(Mat(1,:), Mat(2, :),Mat(3, :));
%plot(G);
%G.Edges.Weight=Mat(3, :)
%plot(G)