[reca_margin8, prec_margin8] = pr(gnd_inverse, loss_3m);
plot(reca_margin8, prec_margin8, 'LineWidth', 2);
hold on;

[reca_emd, prec_emd] = pr(gnd_inverse, EMDList08_3m);
plot(reca_emd, prec_emd, 'LineWidth', 2);
hold on;

[reca_cos, prec_cos] = pr(gnd, CosList08_3m);
plot(reca_cos, prec_cos, 'LineWidth', 2);

legend('Siamese', 'EMD', 'Cos');