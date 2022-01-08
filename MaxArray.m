function [max] = MaxArray(array)
%Finds the max value of an array
l = length(array);
max = 0;
for n = 1:l
    a = array(n);
    if(a>max)
        max = a;
%         indx = n;
    end
end
end

