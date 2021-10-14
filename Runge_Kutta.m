function f=Runge_Kutta( begin, h,end_, f_diff, f_0)
N=(end_-begin)/h+1;
sz=size(f_0,1);
f=zeros(sz,N);
%f(1,:)=begin:h:end_;
f(:,1)=f_0;
    for i=1:N-1 
        f(:,i+1)=f(:, i)+h*(0.5*f_diff(f(:, i), begin+i*h)+0.5*f_diff(f(:, i)+h*f_diff(f(:, i), begin+i*h),       begin+(i+1)*h)); 
    end
end