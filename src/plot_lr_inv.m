base_lr = 0.00005;

gamma = 0.000005;

P = 0.1;

for i = 1 : 1 : 1000000
   lr(i) = base_lr * ( 1 + gamma * i).^(-P);
end

plot(lr);