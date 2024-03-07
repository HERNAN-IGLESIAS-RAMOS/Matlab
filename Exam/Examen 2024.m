%% Hernán Iglesias Ramos uo278462 Cálculo Examen

%% Ej1
clear
clc
close all
%
syms x
f(x)=-((-x^3-2*x^2+x+2)/(x-3)^2);
interseccionOX=solve(f);
fplot(f,[-2 5])
L1=limit(f,x,3,'left'); % inf
L2=limit(f,x,3,'right'); % inf
% --> asitonta vertical en x=3
% asintotas horizontales
L3=limit(f,-inf); %-inf
L4=limit(f,inf); %inf
% --> no tiene asintota horizontal
m=limit(f(x)/x,inf); % m=1
n=limit(f(x)-m*x,inf); % n=8
m=limit(f(x)/x,-inf); % m=1
n=limit(f(x)-m*x,-inf); % n=8
% --> asintota oblicua y=x+8 en inf y -inf
d1=diff(f);
d1(-3); %0.3148
puntos=double(solve(d1)); %puntos criticos 0.4671, -1.4945, 10.0274
hold on
plot(0.4671,'og--')
plot(-1.4945,'or-')
plot(10.0274,'ob-')
d2=diff(d1);
d2(-2); %-0.2240
inflexion=double(solve(diff(d1,x)==0)); %-0.1579

%% Ej2
clear
clc
close all
%
syms x
f(x)=7/(2*x^2+1);
paridad=isequal(f(x),f(-x)); % 1, es par 
fplot(f,[-10 10])
L3=limit(f,-inf); % 0
L4=limit(f,inf); % 0
% --> asintota horizontal en y=0
Area=int(abs(f-0),-inf,inf); % 15.5501

%% Ej3
clear
clc
close all
%
syms x y
f(x,y)=x^3+3*x*y^2-15*x-12*y;
fsurf(f,[-3 3 -2 2],'EdgeColor','none')
f(-1,1); %resultado=-1
% Gradiente
fx=diff(f,x);
fy=diff(f,y);
grad=[fx fy];
grad(-1,2); %0, -24
% Ceros del gradiente
sol=solve(grad);
xs=double(sol.x);
ys=double(sol.y);
% --> puntos criticos: (-1,-2) (-2,-1) (2,1) (1,2)
% Hessiana
fxx=diff(f,x,2);
fyy=diff(f,y,2);
fxy=diff(fx,y);
H=[fxx fxy; fxy fyy];
H(-1,-2); %[-6 -12; -12 -6]
D=det(H);
D_val=D(xs,ys); %-108
% (-1,-2) D<0,fxx>0 ---> punto de silla
