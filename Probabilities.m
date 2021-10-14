function P=Probabilities(A)
sz=size(A, 1);
B=zeros(sz,1);
B(sz, 1)=1;
P=(A\B)';
end