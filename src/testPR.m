gndtr = gnd.'>0;
EMDList = -EMDList;
loss_sorted = sort(EMDList,'descend');
pnom = [];
pdenom = [];
for i = 1:length(loss_sorted)
    pred = EMDList>=loss_sorted(i);
    pnom = [pnom sum(gndtr & pred)];
    pdenom = [pdenom sum(pred)];
end
prec = pnom./pdenom;
reca = pnom./sum(gndtr);

for i = 1:length(prec)-1
    prec(i) = max(prec(i+1:end));
end

plot(reca,prec)
