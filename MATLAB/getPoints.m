function [line] = getPoints(x,y, weight)
line = [];
for i = 1:length(x)
    for j = 1:length(y)
        margin = 0.01;
        sum = (weight(1) * x(i)) + (weight(2) * y(j)) + weight(3);
        if  sum <= 0 + margin && sum >= 0 - margin
            line = [line; x(i) y(j)];
        end
    end
end

    
           

end

