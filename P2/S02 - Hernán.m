% Área para rellenar el nombre y apellidos
% Por ejemplo:
% Nombre='José Fernández Fernández';
Nombre='Hernán Iglesias Ramos';

disp(['Práctica entregada por ',Nombre]);
%% Ejercicio 13
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 13    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio 13
clear; % 
syms x;
f(x)=sqrt(10^2+x^2)+(30-x);
f(x)=2*sqrt(10^2+x^2)+(30-x);
df(x)=diff(f,x);
P=solve(df(x)==0,x);
double(P);
ezplot(f,[-10,20]);

disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 13          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio 14
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Solución del ejercicio 14    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aquí la solución del Ejercicio 14
clear; % 
syms x y;
y=9000/x;
f(x)=71x+50(y+y+x^2);
df=diff(f);
d2f=diff(f,2);



disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 14          %%%%%%%%%%%%%%%%%%%%');