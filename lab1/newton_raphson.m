tic
syms x;
syms y;
E=0.0001;
y=x^2+x-2;
dy=diff(y);
n=0; 

x0=-3;
fx0=subs(y,x,x0);
dfx0=subs(dy,x,x0);

while abs(fx0)>E
    x0=x0-fx0/dfx0;
    fx0=subs(y,x,x0);
    dfx0=subs(dy,x,x0);
    n=n+1;
end

x0=vpa(x0);

disp(x0);
disp(n);
toc


