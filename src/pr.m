function [ reca, prec, f1score, threshold] = pr( gnd_inverse, loss )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    
gndtr = gnd_inverse.'>0;
loss = -loss;
loss_sorted = sort(loss,'descend');
pnom = [];
pdenom = [];

for i = 1:length(loss_sorted)
    pred = loss>=loss_sorted(i);
    pnom = [pnom sum(gndtr & pred)];
    pdenom = [pdenom sum(pred)];
end
prec = pnom./pdenom;
reca = pnom./sum(gndtr);

for i = 1:length(prec)-1
    prec(i) = max(prec(i+1:end));
end

% f1 score
f1score = 0;
beta_2  = 100;
for i = 1:length(prec)
    score = ((1 + beta_2)* prec(i) * reca(i)) / (beta_2*prec(i) + reca(i));
    if score > f1score
       f1score = score; 
       threshold = -loss_sorted(i);
    end
end

end

