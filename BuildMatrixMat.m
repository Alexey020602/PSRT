function Mat=BuildMatrixMat(Mat)
    sz=size(Mat, 1);
    for i=1:sz
        for j=1:sz
            if(i~=j)
                Mat(i, i)=Mat(i, i)-Mat(j, i);
            end
        end
    end
    %Mat(sz, :)=ones(1, sz);
end