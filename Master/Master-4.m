%% Práctica de laboratorio 4. Cálculo.

%% Gráficas en 3D

clear all
plot3(2,3,1) % Dibuja el punto(2,3,1) ¡pero apenas se ve!
plot3(2,3,1,'*r') % Dibuja el punto(2,3,1) con un asterisco rojo.
plot3([2,3,4],[3,0,-1],[1,-2,5]) % Poligonal que une (2,3,1),(3,0,-2) y (4,-1,5)
plot3([2,3,4],[3,0,-1],[1,-2,5],'g*') % Dibuja (2,3,1),(3,0,-2) y (4,-1,5) con *verde.
plot3([2,3,4],[3,0,-1],[1,-2,5],'g*-')% Dibuja también la poligonal.

%% Expresiones y funciones simbólicas de varias variables

clear all
syms x y
f(x,y)=x*exp(-x^2-y^2)
f(1,2)

%% Representación de una superficie

clear all
syms x y
f(x,y)=x*exp(-x^2-y^2)
subplot(2,1,1), fsurf(f,[-3,3,-2,2])
subplot(2,1,2), fsurf(f,[-3,3,-2,2],'ShowContours','on')

%% Representar f(x,y)=x^2+y^2 en el rectángulo [-2,2]x[-3,3] con curvas de nivel

clear all
clear, close all
syms x y
f(x,y)=x^2+y^2
fsurf(f,[-2,2,-3,3] ,'ShowContours','on')

%% Representar f(x,y)=xy/(x^2+y^2) en el rectángulo [-2,2]x[-2,2]. En una 
% segunda ventana representar la misma función usando una malla de 51x51 puntos.

clear all
syms x y
f(x,y)=x*y/(x^2+y^2);
fsurf(f,[-2,2,-2,2])
figure(2)
fsurf(f,[-2,2,-2,2],'MeshDensity',51)

%% Derivadas parciales

clear all
syms x y
f(x,y)=x^2*cos(y)+x*y^2;
dxf=diff(f,x)
dyf=diff(f,y)
grad=[dxf,dyf]
gradient(f) % Vector columna en lugar de fila

%% Dada f(x,y)=arctan(y/x), calcular la expresión E(x,y)=d^2f(x,y)/dx^2+d^2f(x,y)/dy^2

clear all
syms x y
f(x,y)=atan(y/x)
E(x,y)=diff(f,x,2)+ diff(f,y,2)
simplify(E)

%% Dada la función f(x,y)=x^2+sen(xy):
% 1. Calcula el vector gradiente de f

clear all
syms x y
f(x,y)=x^2+sin(x*y)
grad=[diff(f,x),diff(f,y)]

% 2. Calcula el valor del gradiente de f en (1,-2)

grad(1,-2)
double(ans)

% 3. Calcula d^3f(x,y)7(dx^2dy)

diff(diff(f,y),x,2)

%% Extremos relativos
% Dada f(x,y)=x^2+y^2+xy^2:
% 1. Calcula y clasifica los puntos críticos de f. ¿hay extremos relativos?

clear all
syms x y
f(x,y)=x^2+y^2+x*y^2; pretty(f)
fx=diff(f,x)
fy=diff(f,y)
[xs,ys]=solve(fx,fy) % Calculamos los puntos críticos
fxx = diff(fx,x)
fyy = diff(fy,y)
fxy = diff(fx,y)
H=[fxx, fxy; fxy, fyy] % Hallamos la matriz Hessiana
H1=H(xs(1),ys(1)) % Evaluamos la matriz Hessiana en cada punto crítico
det(H1) % Definida positiva mínimo relativo
H2=H(xs(2),ys(2))
det(H2) % Indefinida punto de silla
H3=H(xs(3),ys(3))
det(H3) % Indefinida punto de silla
zs=f(xs,ys) % Evaluamos en los puntos críticos

% 2. Representa gráficamente f y los puntos críticos en el rectángulo [-3,1]x[-2,2]

fsurf(f,[-3,1,-2,2])
hold on
plot3(xs,ys,zs,'g*')