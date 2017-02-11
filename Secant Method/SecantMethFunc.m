function x = SecantMethFunc(f, x1, x2, tol, Nmax) 
fx1=f(x1);          
fx2=f(x2);
if abs(fx2)>tol
    for i=1:Nmax
        x_array = [x2 x2-((x2-x1)*fx2)/(fx2-fx1)];               
        %iterate to find next value of x and assign it to x_array
        x1=x_array(1);
        x2=x_array(2);
        fx1=f(x1);          
        fx2=f(x2);
        if abs (fx2) < tol        %to break out, look at the second element in the array
            break;
        end
    end
end
x=x2;

end

