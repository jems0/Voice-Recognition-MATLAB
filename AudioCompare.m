function [compare] = AudioCompare(audio0,audio1)
%The sum, of the absolute value of the difference, of each audio section
compare = 0;
for n = 1:20
    compare = compare + abs(audio0(n)-audio1(n));
end