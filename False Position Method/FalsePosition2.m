a=1;
b=2;
f=@(x) x^2-3;
fa=f(a);
fb=f(b);
x=(a*fb-b*fa)/(fb-fa);
fx=f(x);
tol=0.001;

i=0;                        
while abs (fx) >= tol && i<10
    if fx*fa>0
        a=x;
    else
        b=x;
    end
    fa=f(a);
    fb=f(b);
    x=(a*fb-b*fa)/(fb-fa);          %compute new x
    fx=f(x);                        %compute correspondin f(x)
    i=i+1;
end
alpha=x;