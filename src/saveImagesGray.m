function [  ] = saveImagesGray( set, imagesRange)
%SAVEIMAGESRGB Summary of this function goes here
%   Detailed explanation goes here
    
    len = length(imagesRange);
    dir = '/home/yh/kitti_test/imagestest/';
    
    for i = 1 : 1 : len
        i
        
        grayImage = mat2gray(imagesRange{i});
        
        name = sprintf('%04d.jpg', i);
        setname = num2str(set);
        
        filename = [dir, setname, name];
        
        filename
        
        imwrite(grayImage, filename);
        
    end

end
