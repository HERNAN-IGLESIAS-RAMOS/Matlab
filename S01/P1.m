% Práctica 1 de cálculo
clear
clc
%% Variables
x=0;
syms y %crear variable simbólica
z=3-2i;
t=sin(pi/2);
% Comparar variables
L=isequal(x,0);
L2=isreal(z);
L3=double(L2);

%% Funciones
clear
clc
syms x
f(x)=x^3+3*x^2-4; % función simbólica
% Ecuación f(x)=0
sol=solve(f);
val=sqrt(2);% valor
f_val=f(val);% variable simb
f_num=double(f_val);% valor numérico

%% Ejemplo 6.3
q(x)=2*(x-1)-2*(x-1)^2+(x-1)^3;
% q=expand(q)
sol1=solve(q);
% la suma de las soluciones
S=double(sum(sol1));
% soluciones reales - find
Ind_sol_re=find(imag(sol1)==0);% posición dentro del vector sol1
sol_re=sol1(Ind_sol_re);% valor 

%% Ej6.5
f(x)=x^2+1;
g(x)=x^3+2*x-3;
h(x)=f(g(x));
%%
clear
clc
syms x
f(x)=log(abs(x+2));
val=-2;
f_val=double(f(val));
%% Gráficas
clear
clc
close all
syms x
f(x)=x^2;
ezplot(f(x),[-3,3])
figure % nueva ventana de dibujo
fplot(f,[-3,3])
figure
xx=[-3:0.5:3];% vector de puntos en Ox
yy=f(xx);% vector de valores de f en xx
plot(xx,yy,'m*-')

