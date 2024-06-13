x = 1.920:0.001:2.080;
c = [1; -18; 144; -672; 2016; -4032; 5376; -4608; 2304; -512];

V = vander(x);
V = V(:, end-9:end);

plot(x, V*c, '.', "MarkerSize", 10)
hold on
plot(x, (x - 2).^9, '.', "MarkerSize", 10)
hold off
title("Expanded Evaluation vs Factored Evaluation of a Polynomial")
legend("Expanded", "Factored")
xlabel("x")
ylabel("p(x)")