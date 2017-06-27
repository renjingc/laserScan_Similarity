plot(tpr_margin8, fpr_margin8);
hold on;
plot(tpr_cos, fpr_cos);
hold on;
plot(tpr_emd, fpr_emd);
legend('Siamese', 'Cos', 'EMD');