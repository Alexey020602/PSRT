function f=Runge_Kutta(end_, begin, h, f_diff, f_0)
N=(end_-begin)/h+1;
f=zeros(1,N);
%f(1,:)=begin:h:end_;
f(1)=f_0;
    for i=1:N-1
        f(i+1)=f(i)+h*f_diff(begin+i*h);
    end
end