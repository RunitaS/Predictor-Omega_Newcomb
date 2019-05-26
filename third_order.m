function [PR101, PR011, PR111, PR001, PR000, PR100, PR010, PR110] = third_order(X)


LNX = length(X);
j = 0.0;
k = 0.0;
m = 0.0;
n = 0.0;
o = 0.0;
p = 0.0;
q = 0.0;
r = 0.0;

for i = 1:LNX-2
    
    if X(i) < 0 && X(i) > 1 
        disp('error');
        i
        break;
    end
    
    if X(i) == 1 && X(i+1) == 0 && X(i+2) == 1
        j = j+1.0;
    end
    
    if X(i) == 0 && X(i+1) == 1 && X(i+2) == 1
        k = k+1.0;
    end
    
    
    if X(i)== 1 && X(i+1) == 1 && X(i+2) == 1
        m = m+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 0 && X(i+2) == 1
        n = n+1.0;
    end
    
    if X(i) == 0 && X(i+1) == 0 && X(i+2) == 0
        o = o+1.0;
    end
    
    if X(i) == 1 && X(i+1) == 0 && X(i+2) == 0
        p = p+1.0;       
    end
    
    if X(i) == 0 && X(i+1) == 1 && X(i+2) == 0
        q = q+1.0;
    end
    
    
    if X(i)== 1 && X(i+1) == 1 && X(i+2) == 0
        r = r+1.0;
        
    end
    
end

PR101 = j/(LNX-2);
PR101;

PR011 = k/(LNX-2);
PR011;

PR111 = m/(LNX-2);
PR111;

PR001 = n/(LNX-2);
PR001;

PR000 = o/(LNX-2);
PR000;

PR100 = p/(LNX-2);
PR100;

PR010 = q/(LNX-2);
PR010;

PR110 = r/(LNX-2);
PR110;

end