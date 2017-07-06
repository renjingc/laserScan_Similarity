function [ outputIndex ] = sampleIndex( inputIndex, select )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    len  = length(inputIndex);
    j = 1;
    
    for i = 1 : 1 : len       
       if mod(i, select) == 0 
           outputIndex(j, :) = inputIndex(i, :);
           j = j + 1;
       end
        
    end

end

