%input of x
x_a = [0 1 2 ];
%input of f(x)
y_a = [2 5 9 ];
%input of a
a = 2;
%output of the lagrange polynomial evaluated at x=a
yInt_2 = Lagrange(x_a,y_a,a);
disp(yInt_2)

function yi = Lagrange(x,y,a)
n = length(x)-1;
L = ones(1,n+1);
for i = 1:(n+1)
    for j = 1:(n+1)
        if (i ~= j)
            L(:,j)=L(:,j).*(a'-x(i))/(x(j)-x(i));
        end
    end
end
yi=y*L';
end
