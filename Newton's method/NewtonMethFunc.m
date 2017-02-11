function x=NewtonMethFunc(f, f1, x, tol, Nmax)
fx=f(x);
f1x=f1(x);
if abs(fx)>tol
    for i=1:Nmax
        x=x-(fx/f1x);               %iterate to find next value of x and assign it to x
        fx=f(x);                    %compute f(x) for new x
        f1x=f1(x);                  %compute value of derivative for new x
        if abs (fx) < tol               %to break out
            break;
        end
    end
end
end
