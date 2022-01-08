function [min] = MinArray(array)
%Finds the min value of an array
l = length(array);
[max] = MaxArray(array);
min = max;
for n = 1:l
    a = array(n);
    if(min>a)
        min = a;
%         indx = n;
    end
end
end

