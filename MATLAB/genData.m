function [result] = genData(a)
    data = gendats([a a],2,4);
    [train, test] = gendat(data,0.6);
    result = [];
    for i = 0:20
        tc = treec(train,0,i);
        error = testc(test,tc);
        %figure();gridsize(1000);scatterd(test);plotc(tc);
        result(i+1) = error;
    end
    
        
        
    
end