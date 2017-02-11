function x=BisectionMethFunc(f, a, b, tol)% Nmax)
fa=f(a);
x=(a+b)/2;
fx=f(x);

%i=0;
% if abs (fx) >= tol              %When tol is not reached
%     for i=1:Nmax
%         if fx*fa>0                      %When fx and fa are the same sign
%             a=x;                        %assign x to the lower bound
%         else
%             b=x;                        %else assign x to upper bound
%         end
%         x=(a+b)/2;                      %compute new x
%         fx=f(x);                        %compute correspondin f(x)
%         if abs (fx) < tol               %to break out
%             break;
%         end
%     end
% end

while abs(fx) >= tol
    if fx*fa>0
        a=x;
    else
        b=x;
    end
    x=(a+b)/2;
    fx=f(x);
end




end


