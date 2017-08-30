fplot(@(x) abs(x),'k',[-1 1]);hold on

x_2 = [-1 0 1];
y_2 = [1 0 1];
xInt_2 = -1 : 0.01 : 1;
yInt_2 = Lagrange(x_2,y_2,xInt_2);
plot(xInt_2,yInt_2,'b',x_2,y_2,'b*');hold on

x_3 = [-1 -1/3 1/3 1];
y_3 = [1 1/3 1/3 1];
xInt_3 = -1 : 0.01 : 1;
yInt_3 = Lagrange(x_3,y_3,xInt_3);
plot(xInt_3,yInt_3,'r',x_3,y_3,'r*');hold on

x_4 = [-1 -1/2 0 1/2 1];
y_4 = [1 1/2 0 1/2 1];
xInt_4 = -1 : 0.01 : 1;
yInt_4 = Lagrange(x_4,y_4,xInt_4);
plot(xInt_4,yInt_4,'m',x_4,y_4,'m*');hold on

x_5 = [-1 -3/5 -1/5 1/5 3/5 1];
y_5 = [1 3/5 1/5 1/5 3/5 1];
xInt_5 = -1 : 0.01 : 1;
yInt_5 = Lagrange(x_5,y_5,xInt_5);
plot(xInt_5,yInt_5,'c',x_5,y_5,'c*');
 
function [yi] = Lagrange(x,y,xi)
n = length(x)-1;
ni = length(xi);
L = ones(ni,n+1);
for j = 1:(n+1)
    for i = 1:(n+1)
        if (i ~= j)
            L(:,j)=L(:,j).*(xi'-x(i))/(x(j)-x(i));
        end
    end
end
yi=y*L';
end

