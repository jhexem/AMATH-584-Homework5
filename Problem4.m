m = 50;
n = 12;
t = linspace(0, 1, m);

A = fliplr(vander(t));
A = A(:, 1:n);
b = cos(4 * t');

xa = (A' * A) \ (A' * b);
"x from part a is: "
fprintf('%.16f\n', xa)

[Q, R] = qr(A, "econ");
xd = R \ (Q' * b);
"x from part d is: "
fprintf('%.16f\n', xd)

xe = A \ b;
"x from part e is: "
fprintf('%.16f\n', xe)

[U, S, V] = svd(A, "econ");
w = S \ (U' * b);
xf = V * w;
"x from part f is: "
fprintf('%.16f\n', xf)

xall = [xa, xd, xe, xf];

SR = svd(R);
k2R = SR(1, 1) / SR(end, end)

SAA = svd(A' * A);
k2AA = SAA(1, 1) / SAA(end, end)