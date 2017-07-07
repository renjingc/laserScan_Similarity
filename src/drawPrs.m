[reca_loss, prec_loss, f1score_loss, threshold_loss] = pr(gnd_inverse, loss_08_test);
plot(reca_loss, prec_loss, 'LineWidth', 2);
hold on;

[reca_emd, prec_emd, f1score_emd, threshold_emd] = pr(gnd_inverse, emdList08_test);
plot(reca_emd, prec_emd, 'LineWidth', 2);
hold on;

[reca_cos, prec_cos, f1score_cos, threshold_cos] = pr(gnd, cosList08_test);
plot(reca_cos, prec_cos, 'LineWidth', 2);

legend('Siamese', 'EMD', 'Cos');
xlabel('Recall');
ylabel('Precision');