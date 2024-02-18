%% Práctica de laboratorio 3. Cálculo

%% Cálculo integral

clear all
syms x y
int(x*exp(x))
int(x*exp(x),0,1)
int(cos(x*y))
int(cos(x*y),y)
syms a b
int(cos(x),a,b)
int(1/x^2,1,inf)
int(1/x,1,inf)

%% Ejemplo 1.1

% Calcular el área que encierran y=2x^3 e y=8x
clear all
syms x
f(x)=2*x^3
g(x)=8*x
solve(f-g) % Calculamos los puntos de corte entre las gráficas

fplot(f,[-2,2])
hold on
fplot(g,[-2,2]) % Las representamos gráficamente
hold off
legend('f','g')

a1=int(f(x)-g(x),x,-2,0) % Cálculo del área por separado
a2=int(g(x)-f(x),x,0,2)
area=a1+a2

area=int(abs(f(x)-g(x)),x,-2,2) % Cálculo en una única integral

%% Ejemplo 1.2

% Hallar el área comprendida entre la función f(x)=(x^2-1)/(x^2+1) y su
% asíntota horizontal

clear all
syms x
f(x)=(x^2-1)/(x^2+1);
limit(f(x),x,inf) % Calculamos su asíntota horizontal
limit(f(x),x,-inf)

solve(f(x)==1) % Analizamos si la función corta la asíntota

fplot(f,[-5,5]) % Representamos gráficamente la función y la asíntota
hold on
fplot(1,[-5,5])
hold off

area=int(1-f(x),x,-inf,inf) % Calculamos su área

%% Ejemplo 1.3

% Calcular el área limitada por f(x)=(-x^2+x+3)ln(x) y el eje de abscisas
clear all
syms x
f(x)=(-x^2+x+3)*log(x);
sol=double(solve(f)) % Calculamos los puntos de corte con los ejes

fplot(f,[sol(1),sol(3)]) % Descartamos la solución negativa y representamos
grid on

area=int(f(x),x,sol(1),sol(3))
double(area)

%% Ejemplo 1.4

% Calcular la integral entre 0 y 1 de e^(-x^2)
clear all
format long
syms x
f(x)=exp(-x^2) % No tiene primitiva. Debe calcularse de forma aproximada
valor=int(f(x),0,1)
double(valor)
p2=taylor(f,'Order',3)
p4=taylor(f,'Order',5)
p6=taylor(f,'Order',7)
p10=taylor(f,'Order',11)
p14=taylor(f,'Order',15)
double(int(p2,0,1))
double(int(p4,0,1))
double(int(p6,0,1))
double(int(p10,0,1))
double(int(p14,0,1))

%% Representación gráfica de un área

clear all
syms x;
f(x)=sin(x);
xd = linspace(-pi,pi,50);
yd=double(f(xd));
area(xd,yd) % se DIBUJA sombreada
valor_area_encerrada=int(abs(f),x,-pi,pi)
hold on
title('Area calculada f(x) = sen(x) entre -pi y pi')
legend('area')