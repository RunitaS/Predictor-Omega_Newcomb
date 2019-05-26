function [PR1011, PR0111, PR1111, PR0011, PR1001, PR0101, PR1101, PR0001, PR1010, PR0110, PR1110, PR0010, PR1000, PR0100, PR1100, PR0000] = fourth_order(X)

LNX = length(X);
a = 0.0;
b = 0.0;
c = 0.0;
d = 0.0;
e = 0.0;
f = 0.0;
g = 0.0;
h = 0.0;
l = 0.0;
s = 0.0;
t = 0.0;
u = 0.0;
v = 0.0;
w = 0.0;
x = 0.0;
y = 0.0;

for i = 1:LNX-3
    
    if X(i) < 0 && X(i) > 1 
        disp('error');
        i
        break;
    end
    
    if X(i) == 1 && X(i+1) == 0 && X(i+2) == 1 && X(i+3) == 1
        a = a+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 1 && X(i+2) == 1 && X(i+3) == 1
        b = b+1.0;
    end
    
    
    if X(i)== 1 && X(i+1) == 1 && X(i+2) == 1 && X(i+3) == 1
        c = c+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 0 && X(i+2) == 1 && X(i+3) == 1
        d = d+1.0;
    end
    
    if X(i) == 0 && X(i+1) == 0 && X(i+2) == 0 && X(i+3) == 1
        e = e+1.0;
    end
    
        if X(i) == 1 && X(i+1) == 0 && X(i+2) == 0 && X(i+3) == 1
        f = f+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 1 && X(i+2) == 0 && X(i+3) == 1
        g = g+1.0;
    end
    
    
    if X(i)== 1 && X(i+1) == 1 && X(i+2) == 0 && X(i+3) == 1
        h = h+1.0;
        
    end
    
     if X(i) == 1 && X(i+1) == 0 && X(i+2) == 1 && X(i+3) == 0
        l = l+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 1 && X(i+2) == 1 && X(i+3) == 0
        s = s+1.0;
    end
    
    
    if X(i)== 1 && X(i+1) == 1 && X(i+2) == 1 && X(i+3) == 0
        t = t+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 0 && X(i+2) == 1 && X(i+3) == 0
        u = u+1.0;
    end
    
    if X(i) == 0 && X(i+1) == 0 && X(i+2) == 0 && X(i+3) == 0
        v = v+1.0;
    end
    
        if X(i) == 1 && X(i+1) == 0 && X(i+2) == 0 && X(i+3) == 0
        w = w+1.0;
        
    end
    
    if X(i) == 0 && X(i+1) == 1 && X(i+2) == 0 && X(i+3) == 0
        x = x+1.0;
    end
    
    
    if X(i)== 1 && X(i+1) == 1 && X(i+2) == 0 && X(i+3) == 0
        y = y+1.0;
        
    end
    
end

PR1011 = a/(LNX-3);
PR1011;

PR0111 = b/(LNX-3);
PR0111;

PR1111 = c/(LNX-3);
PR1111;

PR0011 = d/(LNX-3);
PR0011;

PR1001 = e/(LNX-3);
PR1001;

PR0101 = f/(LNX-3);
PR0101;

PR1101 = g/(LNX-3);
PR1101;

PR0001 = h/(LNX-3);
PR0001;

PR1010 = l/(LNX-3);
PR1010;

PR0110 = s/(LNX-3);
PR0110;

PR1110 = t/(LNX-3);
PR1110;

PR0010 = u/(LNX-3);
PR0010;

PR1000 = v/(LNX-3);
PR1000;

PR0100 = w/(LNX-3);
PR0100;

PR1100 = x/(LNX-3);
PR1100;

PR0000 = y/(LNX-3);
PR0000;

end