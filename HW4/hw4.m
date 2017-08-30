% number of equal spaces
N = 50;

m_a=trap(N);
disp(m_a);
s_a=simp(N);
disp(s_a);

%function of composite trapezoidal rule
function r = trap(n)
h = pi/n;
r = 0;
for k = 1:(n-1)
    x = h*k;
    r = r + input(x);
end
r = h*(input(0)+input(pi))/2+h*r;
end

% function of composite simpson's rule
function x = simp(n)
h = pi/n;
q = zeros(1,n+1);
q(1)=0;
q(n+1)=pi;
p1=0; p2=0; p3=0;
for i = 2:n
    q(i) = (i-1)*h;
end
for i = 1:n/2
    p1=p1+input(q(2*i-1));
end
for i = 1:n/2
    p2=p2+input(q(2*i));
end  
for i = 1:n/2
    p3=p3+input(q(2*i+1));
end
x=(h/3)*(p1+4*p2+p3);
end

function s = input(x)
s = cos(x);
end
