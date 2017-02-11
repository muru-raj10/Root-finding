f=@(x) x^2-3;
f1=@(x) 2*x;
x=1.5;
fx=f(x);
f1x=f1(x);
tol=0.001;

i=0;
while abs(fx)>=tol && i<10
    x=x-(fx/f1x);               %iterate to find next value of x and assign it to x
    fx=f(x);                    %compute f(x) for new x
    f1x=f1(x);                  %compute value of derivative for new x
    i=i+1;
end
alpha=x;
