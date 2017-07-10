%SM 
% SMTest = SM01lization(sm00emd, 0.1314,1);
% SMTest = SM01lization(sm00cos, 0.9736,0);
% SMTest = kdToSM(feat_00, 1.250);
% SMTest = SMTrue00_3m;

%SM 
% SMTest = SM01lization(sm02emd, 0.0627,1);
% SMTest = SM01lization(sm02cos, 0.9704,0);
% SMTest = kdToSM(feat_02, 0.700);
% SMTest = SMTrue00_3m;

%SM
% SMTest = kdToSM(feat_05, 1.300);
% SMTest = SMTrue05_3m;

%SM
% SMTest = kdToSM(feat_06, 0.600);
% SMTest = SMTrue06_3m;

%SM
% SMTest = kdToSM(feat_08, 0.900);
% SMTest = SMTrue08_3m;

%SM
% SMTest = SM01lization(sm08emd, 0.199,1);
% SMTest = SM01lization(sm08cos, 0.9208,0);
% SMTest = kdToSM(feat_08_1m, 1.700);
% SMTest = SMTrue08_1m;

%SM
% SMTest = kdToSM(feat_08_2m, 1.8);
% SMTest = SMTrue08_2m;

% SM 08 new
% SMTest = kdToSM(feat_08_new, 2.0);


%erode
colormap gray;
se = strel('disk',8);
SMTest_im = imerode(SMTest, se);
image(SMTest_im,'CDataMapping','scaled');
% imshow(SMTest_im,'InitialMagnification','fit');
% xlabel('SM');

% threshold records of loss/kd-ec

