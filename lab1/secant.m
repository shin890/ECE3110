tic
x1=-2.5;
x2=0;
E=0.0001;
n=0;
f1=fnc(x1);
f2=fnc(x2);


while true
    x3=(f2*x1-f1*x2)/(f2-f1);
    if ((x3-x2)/x3)>E
        x1=x2;
        f1=f2;
        x2=x3;
        f2=fnc(x3);
    else
        break;
    end
    n=n+1;
end

disp(x3);
disp(n);
toc
