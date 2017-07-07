[X_loss,Y_loss,T_loss,AUC_loss, O_loss] = perfcurve(gnd_inverse, loss_08_test, '0');
plot(X_loss,Y_loss,'LineWidth', 2);
AUC_loss
hold on;

[X_emd,Y_emd,T_emd,AUC_emd] = perfcurve(gnd_inverse, emdList08_test, '0');
plot(X_emd,Y_emd,'LineWidth', 2);
AUC_emd
hold on;

[X_cos,Y_cos,T_cos,AUC_cos] = perfcurve(gnd, cosList08_test, '0');
plot(X_cos,Y_cos,'LineWidth', 2);
AUC_cos
hold on;

s1 = ['Siamese  AUC:  ', num2str(AUC_loss)];
s2 = ['EMD        AUC:  ', num2str(AUC_emd)];
s3 = ['Cos          AUC:  ', num2str(AUC_cos)];

legend(s1, s2, s3);
xlabel('False Positive Rate');
ylabel('True Positive Rate');