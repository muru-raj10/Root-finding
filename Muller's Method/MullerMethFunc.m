function res = MullerMethFunc(f, x0, x1, x2, step, tol, Nmax)
x = [x0 x1 x2]';
fx=arrayfun(f, x);   %apply function to each element in array
res=NaN;             %initialise res

for i=1:Nmax
    V = vander(x - x(2));   %Vandermonde matrix
    coeff = inv(V)*fx;      %solve the matrix equation V*coeff=fx for coeff
    disc = coeff(2)^2-4*coeff(1)*coeff(3); %compute discrimiant
    if disc >0
        denom = coeff(2) + sign(coeff(2)) * sqrt(disc);
        x = [x(2) x(3) x(2)- 2*coeff(3)/denom]';    %compute the next iteration
        fx = [fx(2) fx(3) f(x(3))]';        %compute the corresponding f(x)
        
        if (abs(x(3)-x(2))< step || abs(fx(3))<tol)
            res = x(3);     %step size so that our next iteration isn't too near
            break;          %the previous one
        elseif i==Nmax
               disp('Error 1: Muller''s method failed to converge.');
        end
    else
        disp('Error 2: Muller''s method failed.'); 
        break;
    end
end
end

