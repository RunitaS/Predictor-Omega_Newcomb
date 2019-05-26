clc; clear all; close all;

Y = input('Enter an array of numbers');
LNX = length(Y);
X = zeros(1,LNX);

for i = 1:LNX
    
    if Y(i) >= 0 && Y(i) <= 4
        X(i) = 0;
    end
    
    if Y(i) >= 5 && Y(i) <= 9
        X(i) = 1;
    end
end

[PR1, PR0] = first_order(X);

[PR10, PR01, PR11, PR00] = second_order(X);

[PR101, PR011, PR111, PR001, PR000, PR100, PR010, PR110] = third_order(X);

[PR1011, PR0111, PR1111, PR0011, PR1001, PR0101, PR1101, PR0001, PR1010, PR0110, PR1110, PR0010, PR1000, PR0100, PR1100, PR0000] = fourth_order(X);

for i = 1:LNX

if X(24)==1
P1_1 = PR11/PR1;
P0_1 = PR10/PR1;

elseif X(24)==0
P1_1 = PR01/PR0;
P0_1 = PR00/PR0;
end


    
if X(23)==1 && X(24)==1
P1_2 = PR111/PR11;
P0_2 = PR110/PR11;
        
elseif X(23)==1 && X(24)==0
P1_2 = PR101/PR10;
P0_2 = PR100/PR10;
        
elseif X(23)==0 && X(24)==0
P1_2 = PR001/PR00;
P0_2 = PR000/PR00;

elseif X(23)==0 && X(24)==1
P1_2 = PR011/PR01;
P0_2 = PR010/PR01;
end

   

if X(22)==1 && X(23)==1 && X(24)==1
P1_3 = PR1111/PR111;
P0_3 = PR1110/PR111;

elseif X(22)==0 && X(23)==0 && X(24)==0
P1_3 = PR0001/PR000;
P0_3 = PR0000/PR000;

elseif X(22)==1 && X(23)==1 && X(24)==0
P1_3 = PR1101/PR110;
P0_3 = PR1100/PR110;

elseif X(22)==1 && X(23)==0 && X(24)==1
P1_3 = PR1011/PR101;
P0_3 = PR1010/PR101;

elseif X(22)==0 && X(23)==1 && X(24)==1
P1_3 = PR0111/PR011;
P0_3 = PR0110/PR011;

elseif X(22)==0 && X(23)==0 && X(24)==1
P1_3 = PR0011/PR001;
P0_3 = PR0010/PR001;

elseif X(22)==0 && X(23)==1 && X(24)==0
P1_3 = PR0101/PR010;
P0_3 = PR0100/PR010;

elseif X(22)==1 && X(23)==0 && X(24)==0
P1_3 = PR1001/PR100;
P0_3 = PR1000/PR100;
end

end

P1_1
P0_1

P1_2
P0_2

P1_3
P0_3