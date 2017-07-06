base_lr = 0.000002;

gamma = 0.00006;

P = 0.4;

for i = 1 : 1 : 1000000
   lr(i) = base_lr * ( 1 + gamma * i).^(-P);
end

plot(lr);