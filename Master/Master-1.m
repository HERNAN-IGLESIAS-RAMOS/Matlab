%% Práctica de laboratorio 1. Cálculo

%% 1. Introducción
clear all

2+(3*6)/4
(2+(3*6))/4 % Importante uso correcto de paréntesis

a=2+(3*6)/4; % Almacenar los resultados en variables puede ser útil
b=(2+(3*6))/4; % El punto y coma evita la impresión por pantalla

c=a*b;

help c % El comando help es de lo más útil en matlab

pi % Matlab tiene variables reservadas

format long % 2 dígitos para la parte entera y 15 para la decimal

pi

format short % 3 dígitos para la parte entera y 4 para la decimal

sin(pi/2) % Función seno
cos(pi/2) % Función coseno
exp(4) % Función exponencial
sqrt(16) % Raíz cuadrada
log(exp(1)) % Función logarítmo neperiano
log2(4) % Función logarítmo en base 2
log10(100) % Función logarítmo en base 10
abs(-50) % Valor absoluto en numeros reales. Módulo en complejos.

%% Expresiones simbólicas

clear all
syms x y z % Crea tres variables simbólicas
F=x^2-4 % Crea una expresión simbólica
solve(F) % Calcula los ceros de una expresión simbólica
a=subs(F,x,5) % Substituye la variable simbólica en una expresión
double(a) % Calcula el valor numérico de la variable simbólica
G=x^3+3*x^2+3*x+1
H=simplify(G) % simplifica una expresión simbólica
expand(H) % Desarrolla una expresión simbólica
f(x)=x^4-16 % Crea una función simbólica
f(4) % Calcula el valor de f en 4. El resultado es simbólico
solve(f) % Resuelve la ecuación f(x)=0
solve(f(x)==65) % Resuelve la ecuación f(x)=65

%% Ejemplo 6.1
% Resuelve la ecuación x^3+3x^2-4=0

clear all
syms x
f(x)=x^3+3*x^2-4
solve(f)

% Calcula el valor del polinomio en raíz de 2

f(sqrt(2))
double(f(sqrt(2)))

%% Ejemplo 6.2
% Dada f(x)=xe^(x^2-1). Calcular f(2), f(-5) y f(2)f(-5)

clear all
syms x
f(x)=x*exp(x^2-1);
a=double(f(2))
b=double(f(-5))
c=a*b

%% Ejemplo 6.3
% Desarrolla el polinomio p(x) = 2(x − 1) − 2(x − 1)^2 + (x − 1)^3 en
% potencias de x

clear all
syms x
p(x)=2*(x-1)-2*(x-1)^2+(x-1)^3;
expand(p(x))

% Calcula sus raíces

solve(p(x))

%% Ejemplo 6.5
% Dadas f(x)=x^2+1 y g(x)=x^3+2x-3, calcular f+g,f*g,f^{-1} y composiciones

clear all
syms x
f(x)=x^2+1;
g(x)=x^3+2*x-3;
f+g
f-g
f*g
f/g
finverse(f) % Ojo con la inversa. Calcular el dominio
h(x)=f(g(x))
t(x)=g(f(x))

%% Representaciones gráficas

clear all
syms x
fplot(x^2,[-3,3]) % Sustituye a la obsoleta ezplto
hold on % Permite seguir dibujando en la misma figura
plot(2,4,'r*')

%% Ejemplo 8.1
% Representar los puntos de la tabla con asteriscos verdes

clear all
t=0:5; % La orden : entre dos enteros devuelve un vector de paso 1
mg=[102.9 75.8 56.1 42.2 31.1 23.6];
plot(t,mg,'g*')
% Representar en la misma gráfica la función f(x)=102.04e^(-0.29*x)
syms x
f(x)=102.04*exp(-0.29*x);
hold on
fplot(f(x),[0,5],'k')

%% Ejemplo 8.2
% Representar gráficamente la función f(x)=1/(1+2^(1/x)) con x en [-1,1]

syms x
f(x)=1/(1+2^(1/x));
fplot(f(x),[-1,1]) % Como no está definida en x=0 hace cosas raras
figure
fplot(f(x),[-1,-0.00001])
hold on
fplot(f(x),[0.00001,1])