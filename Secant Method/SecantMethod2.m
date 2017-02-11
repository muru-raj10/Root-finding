f=@(x) x.^2-3;      %dot power since we want f to apply element wise
x = [1 2];          %Let x be an array
fx=f(x);
tol=0.001;

while abs(fx(2))>=tol && i<10
    x = [x(2) x(2)-((x(2)-x(1))*fx(2))/(fx(2)-fx(1))];               
        %iterate to find next value of x and assign it to x
    fx=f(x);                    %compute f(x) for new x
    i=i+1;
end
alpha=x(2);
