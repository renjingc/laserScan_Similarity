function [ SM01 ] = kdToSM( featVector, threshold )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    tic
    
    kdTree = KDTreeSearcher(featVector, 'Distance', 'euclidean');
    
    truePairs = [];
    count = 1;
    
    SM01 = ones(length(featVector), length(featVector));
    
    for i = 1 : 1 : length(featVector)
        feat = featVector(i, :);
        [Idx, Dis] = knnsearch(kdTree, feat, 'Distance', 'euclidean', 'K', 50);
        
        for j = 1 : 1 : length(Idx)
            if  Dis(j) < threshold %&& abs(Idx(j) - i) > 10
                truePairs(count, :) = [i, Idx(j)];
                count = count + 1;
            end
        end
        
        SM01(i, i) = 0;
        
    end
    
    length(truePairs)
    
    for i = 1 : 1 : length(truePairs)
        SM01(truePairs(i,1), truePairs(i,2)) = 0;
        SM01(truePairs(i,2), truePairs(i,1)) = 0;
    end
    
    toc
    
    imshow(SM01);
        
end

