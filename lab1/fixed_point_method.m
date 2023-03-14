tic
x0=0;
E=0.0001;
n=0;

while true
    x1=2-x0^2;
    if abs(x1-x0)<E
        break
    end
    x0=x1;
    n=n+1;
end

disp(x1);
disp(n);
toc

