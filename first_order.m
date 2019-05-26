function [PR1, PR0] = first_order(X)

%X = input('Enter an array of numbers');
LNX = length(X);
j = 0.0;
k = 0.0;
   
for i = 1:LNX
             
             if X(i) < 0 && X(i) > 1 
                disp('error');
                i
                break;
             end 
   
    if X(i)== 1
        j = j+1.0;
        
    end
    
    if X(i)== 0
        k = k+1.0;
        
    end
    
end

PR1 = j/LNX;
PR1;

PR0 = k/LNX;
PR0;

end