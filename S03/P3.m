% PRÁCTICA 3: Integrales y Series
clear
clc
%
syms x y
f(x)=x*exp(x);
I1=int(f);% primitiva
I2=int(f,0,1);% integral definida de 0 a 1
I3=int(-1/x,1,2);
g(x,y)=cos(x*y);
I4=int(g);% por defecto la variable de integracion es x
I5=int(g,y);
h(x)=-1/(x^2+1);% Dominio: R
fplot(h,[-5,5]);
I6=int(abs(h),-inf,inf);%area entre f y Ox
%% Area entre f y Ox
clear
close all
clc
%
syms x 
f(x)=(-x^2+x+3)*log(x);
% Dominio: R+*
fplot(f,[0 3])
grid on
sol=double(solve(f));% PUNTOS DE CORTE CON Ox
sol(2)=[];
Area=double(int(f,sol(1),sol(2)));
%% Area entre f Y una recta
clear
close all
clc
%
syms x 
f(x)=2*x^3;
g(x)=8*x;
val=3;
fplot(f,[-val val])
grid on
hold on
fplot(g,[-val val])
% Puntos de corte con la recta
sol=solve(f-g);% -2,0,2
a1=int(f-g,-2,0);
a2=int(g-f,0,2);
Area=a1+a2;
A=int(abs(f-g),-2,2);% otra manera
%% Area entre f y su asíntota
clear
close all
clc
%
syms x 
f(x)=(3*x^2+5)/(x^2+1);% Dominio: R
fplot(f,[-5 5])
% Asintota horizontal
L1=limit(f,inf);% y=3
%g(x)=3+0*x;% asintota = recta horizontal
L_par=isequal(f(x),f(-x));% Si
%A=2*int(f-3,0,inf);% funcion par
Area=int(abs(f-3),-inf,inf);
%% Funciones sin primitiva
clear
close all
clc
%
syms x
f(x)=exp(-x^2);
I=int(f,0,1);% No tiene primitiva
% Aproximacion de Matlab=0.7468
% Taylor
p6=taylor(f,x,1/2,'Order',7);
fplot(f,[-2 2])
hold on
fplot(p6,[-2 2])
I_aprox=double(int(p6,0,1));% 0.7468
%% Series
clear
close all
clc
%
syms n k
f(n)=1/(n^2+3*n+2);
Sum=symsum(f,n,1,inf);
Sum2=double(symsum(((n+1)*5^n)/(n*3^(2*n)),n,1, Inf));
Sum3=symsum(1/n^2,n,1, Inf);
















