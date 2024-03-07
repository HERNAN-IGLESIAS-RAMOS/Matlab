% Área para rellenar el nombre y apellidos
% Por ejemplo:
% Nombre='José Fernández Fernández';
Nombre='Hernán Iglesias Ramos';

disp(['Práctica entregada por ',Nombre]);
%% Ejercicio 1
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 1    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio 1
clear; % 
syms h a;
T(h)=8+(h*(h-a)*(h-24))/100; %Expresión
a=solve(T(7)==2); %Valor de a
T(h)=8+(h*(h-a)*(h-24))/100; %Aquí asignamos a la variable a el valor calculado
T(12); %Este es el resultado
ezplot(T,[0,24]); %Dibujamos la Expresión T en el intervalo
disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 1          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio 2
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 2    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio 2
clear; % 
syms y0 k t;
y(t)=y0*exp(-k*t);
y(4)==0.8*y(t);
y0=30;
solve(y(4)==0.8*y(t));
solve(y(4)==0.8*y(t),k);

plot(30,60,'r*');
hold on;
ezplot(y,[0,60]);

disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 2          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio 3
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 3    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio 3
clear; % 
syms t Tm T0 r;
T(t)=Tm+(T0-Tm)*exp(-r*t);
T(0)==100;
T(5)==50;
T(15)==25;
solve(T(20));
ezplot(T,[0,100])
disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 3          %%%%%%%%%%%%%%%%%%%%');

%%Para cuando nos aparece root, porque no son valores reales
%%pues utilizamos el double
