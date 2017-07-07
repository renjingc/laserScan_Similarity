function [ EMDList ] = emdFromList( list, imageCells )
%EMDFROMLIST Summary of this function goes here
%   Detailed explanation goes here
    len = length(list);
    EMDList = zeros(len,1);
    sections = 80;
    
    tic
    for i = 1 : 1 : len
        i
        
        first = list(i, 1);
        second= list(i, 2);
        
        A = imageCells{first};
        B = imageCells{second};
        
        sumEMD = 0;
           
       for k = 1 : 1 : size(A,1)
            C = A(k, :);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
            D = B(k, :);
            EMD = 0;

            for m = 1 : 1 : sections
                for n = 1 : 1 : m
                    delta = abs(C(1, n) - D(1, n));
                    EMD = EMD + delta;
                end
            end
            EMD = EMD /sections;

            sumEMD = sumEMD + EMD;    
       end

       EMDSimity = sumEMD / size(A,1);
       
       EMDList(i) = EMDSimity;
        
    end
    toc

end

