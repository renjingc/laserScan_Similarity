function [ CosList ] = cosFromList( list, imageCells )
%COSFROMLIST Summary of this function goes here
%   Detailed explanation goes here
    len = length(list);
    CosList = zeros(len);
    sections = 80;
    
    for i = 1 : 1 : len
        i
        
        first = list(i, 1);
        second= list(i, 2);
        
        A = imageCells{first}; 
           B = imageCells{second};
           sumCos = 0;
           
           for k = 1 : 1 : size(A,1)
               C = A(k, :);
               D = B(k, :);
               sumCos = sumCos + dot(C, D) / (norm(C)*norm(D));    
           end
           
           cosSimity = sumCos / size(A,1);
       
       CosList(i) = cosSimity;
        
    end

end

