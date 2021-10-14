 function Value=Entropy(P)
 Value=0;
    for i=P
        if i~=0
        Value=Value-i*log2(i);
        end
    end
end