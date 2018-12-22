function [weight] = perceptron(X,Y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
weight = [0 0 0];
errors = 1;
p = 0.1;
data = [X Y];
 while errors == 1
    set = [];
    errors = 0;
    for i = 1:size(data,1)
        if sign(weight*data(i,1:3)') ~= data(i,4)
            set = [set; data(i, :)];errors = 1;
        end
    end
    if errors == 1
        temp = p*sum(set(:,4) .* set(:,1:3));
        weight = weight + p*sum(set(:,4) .* set(:,1:3));%(set(1, 1:3)*set(1,4));
    end
 end
    
           

end

