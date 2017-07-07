[X_loss,Y_loss,T_loss,AUC_loss, O_loss] = perfcurve(gnd_inverse, loss_3m, '0');
plot(X_loss,Y_loss,'LineWidth', 2);
AUC_loss
hold on;

[X_emd,Y_emd,T_emd,AUC_emd] = perfcurve(gnd_inverse, EMDList08_3m, '0');
plot(X_emd,Y_emd,'LineWidth', 2);
AUC_emd
hold on;

[X_cos,Y_cos,T_cos,AUC_cos] = perfcurve(gnd, CosList08_3m, '0');
plot(X_cos,Y_cos,'LineWidth', 2);
AUC_cos
hold on;

legend('Siamese', 'EMD', 'Cos');