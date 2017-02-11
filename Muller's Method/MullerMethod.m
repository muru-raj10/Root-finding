f=@(x) x^2-3;      
x = [1 2 3]';          %Let x be a column vector
fx=arrayfun(f, x);   %apply function to each element in array
tol=0.01;              
step=0.001;          %step size of the subsequent approximation of solution

for i=1:100
    V = vander(x - x(2));
    coeff = inv(V)*fx;
    disc = coeff(2)^2-4*coeff(1)*coeff(3);
    if disc >0
        denom = coeff(2) + sign(coeff(2)) * sqrt(disc);
        x = [x(2) x(3) x(2)- 2*coeff(3)/denom]';
        fx = [fx(2) fx(3) f(x(3))]';
        
        if (abs(x(3)-x(2))< step || abs(fx(3))<tol)
            disp(x(3));
            break;
        elseif i==100
            disp('Error 1: Muller''s method failed to converge.');
        end
    else
        disp('Error 2: Muller''s method failed.');
    end
end

        
  