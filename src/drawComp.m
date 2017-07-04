[tpr_margin8,fpr_margin8,thresholds] = roc(gnd_inverse,loss_new_2000.');
plot(tpr_margin8, fpr_margin8, 'LineWidth', 2);
hold on;
% 
% [tpr_emd,fpr_emd,thresholds] = roc(gnd_inverse,EMDList.');
% plot(tpr_emd, fpr_emd, 'LineWidth', 2);
% hold on;
% 
% [tpr_cos,fpr_cos,thresholds] = roc(gnd,CosList.');
% plot(tpr_cos, fpr_cos, 'LineWidth', 2);
% hold on;

% legend('Siamese', 'EMD', 'Cos');