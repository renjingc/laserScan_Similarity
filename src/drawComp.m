[tpr_margin8,fpr_margin8,thresholds] = roc(gnd_inverse,loss.');
plot(tpr_margin8, fpr_margin8);
hold on;

[tpr_emd,fpr_emd,thresholds] = roc(gnd_inverse,EMDList.');
plot(tpr_emd, fpr_emd);
hold on;

[tpr_cos,fpr_cos,thresholds] = roc(gnd,CosList.');
plot(tpr_cos, fpr_cos);
hold on;

legend('Siamese', 'EMD', 'Cos');