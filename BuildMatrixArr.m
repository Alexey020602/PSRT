function A=BuildMatrixArr(Mat)
s=max(max(Mat(1:2, :)));
A=zeros(s, s);
for i=1:s
    value=0;
    O=find(Mat(1,:)==i);
    I=find(Mat(2,:)==i);
    for k=O
        value=value+Mat(3, k);
    end
    A(i, i)=-value;
    for j=I
        A(i,Mat(1, j))=Mat(3,j);
    end
end
%A(s,:)=ones(1, s);
% sum=0
% for i=P'
%     sum=sum+i
% end
% sum
end