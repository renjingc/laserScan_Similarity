base_lr = 0.0001;

gamma = 0.000005;

P = 0.8;

for i = 1 : 1 : 1000000
   lr(i) = base_lr * ( 1 + gamma * i).^(-P);
end

plot(lr);