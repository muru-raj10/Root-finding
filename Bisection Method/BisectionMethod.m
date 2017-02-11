a=1;
b=2;
f=@(x) x^2-3;
fa=f(a);
x=(a+b)/2;
fx=f(x);
tol=0.01;
Nmax=2;

t={' ' 'a' 'b' 'x=(a+b)/2' 'f(x)' 'Is |f(x)|<tol?'}; %For display
i=0;                        
if abs (fx) >= tol              %When tol is not reached
    t(2,:) = {' ' a b x fx 'False'};
    for i=1:Nmax
        if fx*fa>0                      %When fx and fa are the same sign
            a=x;                        %assign x to the lower bound
        else
            b=x;                        %else assign x to upper bound
        end
        x=(a+b)/2;                      %compute new x
        fx=f(x);                        %compute correspondin f(x)
        if abs (fx) < tol               %to break out
            t(2+i,:)={i a b x fx 'True'};
            break;
        else
            t(2+i,:)={i a b x fx 'False'};
        end
    end
else
    t(2,:)={' ' a b x fx 'True'};
end
xlswrite('BisectionMethod.xlsx',t);

