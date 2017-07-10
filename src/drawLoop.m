function drawLoop( SM, pose )
%DRAWLOOP Summary of this function goes here
%   Detailed explanation goes here    
    hold on
    
    [i1,i2] = find(SM == 0);
    index = [i1, i2];
    
    for i = 1:size(index,1)
        i
        if index(i,1)-index(i,2) < 10
            continue
        end
        idi = index(i,1);
        idj = index(i,2);
        pi = pose{index(i,1)};
        pj = pose{index(i,2)};
        pi = pi(1:3,4);
        pj = pj(1:3,4);
        plot3([pi(1) pj(1)],[pi(2) pj(2)],[pi(3)+idi*0.1 pj(3)+idj*0.1],'r','LineWidth',2)   
        % To draw on the trajectory of kitti
        drawnow
        
    end

end

