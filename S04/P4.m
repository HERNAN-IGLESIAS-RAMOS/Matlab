% Práctica 4: Funciones de varias variables
%% Gráficas 3D
clear 
clc
close all
% Puntos
plot3(-1,2,-3,'m*')
hold on
plot3([-1 0 2 5],[2 0 -1 1],[-3 0 0 0],'og--')
xx=[-1:10];
yy=linspace(3,8,12);
zz=xx.^2+2.*xx.*yy;
figure
plot3(xx,yy,zz,'ob-')
% Función
syms x y
f(x,y)=x*exp(-x^2-y^2);
close all
subplot(2,2,1)
fsurf(f,[-3 3 -2 2],'EdgeColor','none')
subplot(2,2,2)
fsurf(f,[-3 3 -2 2],'ShowContours','on')
colormap("cool")
subplot(2,2,3)
fmesh(f,[-3 3 -2 2])
subplot(2,2,4)
fcontour(f,[-3 3 -2 2])
%% Estudio de funciones
clear 
clc
close all
%
syms x y
f(x,y)=x^2+y^2+x*y^2;
fsurf(f,[- 3 3 -2 2])
% Gradiente
fx=diff(f,x);
fy=diff(f,y);
grad=[fx fy];
% Ceros del gradiente
sol=solve(grad);
xs=double(sol.x);
ys=double(sol.y);
% --> punto críticos: (0,0) (-1,sqrt(2)) (-1,-sqrt(2))
% Hessiana
fxx=diff(f,x,2); % 2 siempre positiva
fyy=diff(f,y,2);
fxy=diff(fx,y);
H=[fxx fxy; fxy fyy];
D=det(H);
D_val=D(xs,ys)
% (0,0) D>0,fxx>0 ---> minimo local
% (-1,sqrt(2)) D<0, fxx>0 ---> punto de silla
% (-1,-sqrt(2)) igual que el de antes, punto de silla
hold on
plot3(xs,ys,f(xs,ys),'m*')















