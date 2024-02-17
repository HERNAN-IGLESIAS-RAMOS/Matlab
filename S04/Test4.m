%% Ejercicio1
clear 
clc
close all
%
syms x y
f(x,y)=-5*x^2+2*x*y+4*x-2*y^2+4*y-4;
fsurf(f,[- 3 3 -2 2])
% Gradiente
fx=diff(f,x);
fy=diff(f,y);
grad=[fx fy];
grad(-1,2); %[18,-6]
% Ceros del gradiente
sol=solve(grad);
xs=double(sol.x);
ys=double(sol.y);
% --> punto crítico: (0.6667, 1.3333)
% Hessiana
fxx=diff(f,x,2);
fyy=diff(f,y,2);
fxy=diff(fx,y);
H=[fxx fxy; fxy fyy]; %matriz hessiana
D=det(H);
D_val=D(xs,ys); %D=36
% --> punto maximo local
% (0.6667, 1.3333) D>0,fxx<0 ---> máximo local
hold on
plot3(xs,ys,f(xs,ys),'m*')
