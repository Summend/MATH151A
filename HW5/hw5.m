A = [2 1;1 3];
b = [1;2];
n = size(A,1);
D = diag(diag(A));
L = tril(-A,-1);
U = triu(-A,1);

%Tj = inv(D)*(L+U);
%cj = inv(D)*b;
cj = [1/2;1/3];
Tj = [0 1/2;1/3 0];
k = 1;
x = ones(n,1);

while k <= 20
   x(:,k+1) = -Tj*x(:,k) + cj;
   k = k+1;
end
plot(x(1,1:21)');hold on
plot(x(2,1:21)');
