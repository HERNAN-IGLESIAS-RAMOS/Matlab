% Área para rellenar el nombre y apellidos
% Por ejemplo:
% Nombre='José Fernández Fernández';
Nombre='Hernán Iglesias Ramos';

disp(['Práctica entregada por ',Nombre]);
%% Ejercicio Integrales 10
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 4.10    %%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio Integrales 4.10
clear; % 
syms x;
f(x)=x^2/(x^2-1);
pretty(f);
ezplot(f,[-5 5]); %representacion grafica
p2=taylor(f,'Order',3); % aproximar la funcion por una parabola en un entorno de 0 (McLaurin)
area1=int(abs(f),x,-1/2,1/2); %area limitada por f y el eje OX en [-1/2,1/2]
double(area1);
area2=int(abs(f-p2),x,-1/2,1/2); %area limitada por f y la parabola en [-1/2,1/2]
double(area2);
disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 4.10          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio Integrales 11
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 4.11    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio 4.11
clear; % 
syms x;
f(x)=1/(x^2-4);
pretty(f);
ezplot(f,[-5 5]);%representacion grafica
area1=int(f,x,3,inf);
double(area1); %area limitada por f y el eje OX en [3,inf]
volumen=int(f^2,x,3,inf);
double(volumen)*pi; %volumen generado por la superficie descrita en el apartado anterior al girar alrededor del eje OX

disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 4.11          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio Series 1
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 5.1    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio 5.1
clear; % 
syms n;
f(n)=2/(3^(n-1));
pretty(f);
symsum(f,n,1,inf); %apartado a
g(n)=(3^n+2^(n-1))/(6^n);
pretty(g);
symsum(g,n,1,inf);%apartado b
h(n)=1/(n*(n+1));
pretty(h);
symsum(h,n,1,inf);%apartado c
i(n)=2^n/(n^3);
pretty(i);
symsum(i,n,1,inf);%apartado d

disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 5.1          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio Series 2
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 5.2    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio 5.2
clear; % 
syms a n;
f(n)=1/(n^a);
a=2;
f(n)=1/(n^a);
symsum(f,n,1,inf);%apartado a1
a=-2;
f(n)=1/(n^a);
symsum(f,n,1,inf);%apartado a2

syms r n;
f(n)=1/(r^n);
r=2;
f(n)=1/(r^n);
symsum(f,n,1,inf);%apartado b1
r=-2;
f(n)=1/(r^n);
symsum(f,n,1,inf);%apartado b2
disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 5.2          %%%%%%%%%%%%%%%%%%%%');
