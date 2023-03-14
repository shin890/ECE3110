tic
x1=-3;
x2=0;
E=0.0001;
n=0;
f1=fnc(x1);
f2=fnc(x2);

if (f1*f2)>0
    return
else
    while (abs((x2-x1)/x2))>E
        x0=x1-f1*(x2-x1)/(f2-f1);
        f0=fnc(x0);
        if (f1*f0)<0
            x2=x0;
            f2=f0;
        else
            x1=x0;
            f1=f0;
        end
        n=n+1;

    end
end
disp(x0);
disp(n);
toc
return;
