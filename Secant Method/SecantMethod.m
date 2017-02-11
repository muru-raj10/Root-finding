f=@(x) x.^2-3;      %dot power since we want f to apply element wise
x = [1 2];          %Let x be an array
fx=f(x);
tol=0.01;
Nmax=2;

i=0;
if abs(fx(2))>tol
    for i=1:Nmax
        x = [x(2) x(2)-((x(2)-x(1))*fx(2))/(fx(2)-fx(1))];               
        %iterate to find next value of x and assign it to x
        fx=f(x);                    %compute f(x) for new x
        if abs (fx(2)) < tol        %to break out, look at the second element in the array
            break;
        end
    end
end
alpha=x(2);