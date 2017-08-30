% Seand Method
TOL = 0.00001; a = pi/4; b = 3*pi/8; fa = sin(a)-a;
fb = sin(b)-b; c = b-(fb*(b-a))/(fb-fa); fc = sin(c)-c;
i = 1;
disp('     n      Pn-1      f(Pn-1)      Pn      f(Pn)      Pn+1      f(Pn+1)');
disp([i a fa b fb c fc]);
c_list = [c];
while abs(c-b) > TOL
    a = b; b = c; fa = sin(a)-a;
    fb = sin(b)-b; c = b-(fb*(b-a))/(fb-fa);
    fc = sin(c)-c;
    i = i + 1;
    disp([i a fa b fb c fc]);
    c_list = [c_list c];
end
display(['Root calculated by Secant Method is x = ' num2str(c)]);
stem(c_list); 

%Newton Method
a = pi/4; j = 1; fa = sin(a)-a;
ga = cos(a)-1; d = a - fa/ga;
fd = sin(d)-d;
disp('   n      Pn-1      f(Pn-1)      Pn      f(Pn)');
disp([i a fa d fd]);
d_list = [d];
while abs(a-d) > TOL
    a = d; fa = sin(a)-a; ga = cos(a)-1;
    d = a - fa/ga; fd = sin(d)-d;
    j = j+1;
    d_list = [d_list d];
    disp([j a fa d fd]);
end
display(['Root calculated by Newton Method is x = ' num2str(d)]);
stem(d_list);

    
