function x = FalsePositionMethFunc(f, a, b, tol, Nmax)
fa=f(a);
fb=f(b);
x=(a*fb-b*fa)/(fb-fa);
fx=f(x);
if abs (fx) >= tol              %When tol is not reached
    for i=1:Nmax
        if fx*fa>0                      %When fx and fa are the same sign
            a=x;                        %assign x to the lower bound
        else
            b=x;                        %else assign x to upper bound
        end
        fa=f(a);
        fb=f(b);
        x=(a*fb-b*fa)/(fb-fa);          %compute new x
        fx=f(x);                        %compute correspondin f(x)
        if abs (fx) < tol               %to break out
            break;
        end
    end
end

end

