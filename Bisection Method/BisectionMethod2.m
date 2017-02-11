a=1;
b=2;
f=@(x) x^2-3;
fa=f(a);
x=(a+b)/2;
fx=f(x);
tol=0.001;
Nmax=10;

i=0;                        
while abs (fx) >= tol && i<10
    if fx*fa>0
        a=x;
    else
        b=x;
    end
    x=(a+b)/2;
    fx=f(x);
    i=i+1;
end
alpha=x;
       