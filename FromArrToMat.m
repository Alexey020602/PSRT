function Matrix=FromArrToMat(Arr)
    sz=max(max(Arr(1:2,:)));
    Matrix=zeros(sz,sz);
    for i=1:sz
        Out=find(Arr(1,:)==i);
        for j=Out
            Matrix(Arr(2,j),Arr(1,j))=Arr(3, j);
        end
    end
end
