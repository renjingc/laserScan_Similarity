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

plot(reca,prec)
