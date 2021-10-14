function P_d=P_diff(P, lambda,lambda_exp,t)
    for i=1:size(lambda_exp, 2)
       lambda(lambda_exp(1, i), lambda_exp(2, i))=lambda_exp(3,i)*exp(lambda_exp(4, i)+lambda_exp(5, i)*t);
    end
    P_d=lambda*P;
end