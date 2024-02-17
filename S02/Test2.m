% Hernán Iglesias Ramos - Cálculo

%% Ejercicio1
clc 
clear
close all
syms x
%
f(x)=log(x^2)/(x^2+4);
fplot(f,[-6 6])
solve(f(x)==0); % intersección con el Eje OX, corta con el eje OX en -1 y 1
df = diff(f, x); % primera derivada
df_1=df(1); % la primera derivada evaluada en 1
%EXTREMOS LOCALES
extr=double(solve(diff(f,x)==0)); %-2.3606 y 2.3606
valor1=double(f(extr1(1))); 
valor2=double(f(extr1(2))); 
df2 = diff(df,x); % segunda derivada
df2_2 = df2(-1); % la segunda derivada evaluada en -1
infl=double(solve(diff(df,x)==0)); % coordenadas del punto de inflexion con Ox

%% Ejercicio2
clc 
clear
close all
syms x
%
f(x)=(x-sin(3*x))/(6*x^2);
fplot(f,[-3 3])
%x=0
L1=limit(f,x,0,'left'); % inf
L2=limit(f,x,0,'right'); % -inf
% Tiene una asintota vertical en x=0
% asintotas horizontales
L3=limit(f,-inf); % 0
L4=limit(f,inf); % 0
% asintota horizontal en x=0
% La ecuacion resultante sería y=0 para inf, -inf

%% Ejercicio3
clc 
clear
close all
syms x
%
f(x)=(3*x^3-2)/((x+1)*(x-3))-(abs(x))-2;
fplot(f,[-10 10])
%x=-1
L1=limit(f,x,-1,'left'); %inf
L2=limit(f,x,-1,'right'); %-inf
% asintota vertical en x=-1
%x=3
L3=limit(f,x,3,'left'); %-inf
L4=limit(f,x,3,'right'); %inf
% asintota horizontal en x=3
L5=limit(f,inf); % -inf
L6=limit(f,-inf); % -inf
% no hay asin horizontal
m=limit(f(x)/x,inf); % m=2
n=limit(f(x)-m*x,inf); % n=4
% --> asintota oblicua y=2x+4 en inf
m=limit(f(x)/x,-inf); %m=4
n=limit(f(x)-m*x,-inf);%n=4
% --> asintota oblicua y=4x+4 en -inf



