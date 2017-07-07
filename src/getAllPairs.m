function [ index ] = getAllPairs( length )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    for i = 1 : 1 : length
       index(i, 1) = i;
       index(i, 2) = i; 
    end


end

