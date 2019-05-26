function [PR10, PR01, PR11, PR00] = second_order(X)



LNX = length(X);
j = 0.0;
k = 0.0;
m = 0.0;
n = 0.0;

for i = 1:LNX-1
    
    if X(i) < 0 && X(i) > 1
        disp('error');
        i
        break;
    end
    
    if X(i) == 1 && X(i+1) == 0
        j = j+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 1
        k = k+1.0;
    end
    
    
    if X(i)== 1 && X(i+1) == 1
        m = m+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 0
        n = n+1.0;
    end
    
end

PR10 = j/(LNX-1);
PR10;

PR01 = k/(LNX-1);
PR01;

PR11 = m/(LNX-1);
PR11;

PR00 = n/(LNX-1);
PR00;

end