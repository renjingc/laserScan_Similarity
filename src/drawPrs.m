[reca_margin8, prec_margin8] = pr(gnd_inverse, loss);
plot(reca_margin8, prec_margin8);
hold on;

[reca_emd, prec_emd] = pr(gnd_inverse, EMDList);
plot(reca_emd, prec_emd);
hold on;

[reca_cos, prec_cos] = pr(gnd, CosList);
plot(reca_cos, prec_cos);

legend('Siamese', 'EMD', 'Cos');