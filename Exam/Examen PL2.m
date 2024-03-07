% �rea para rellenar el nombre y apellidos
% Por ejemplo:
% Nombre='Jos� Fern�ndez Fern�ndez';
% EXAMEN PL-2
Nombre='Hern�n Iglesias Ramos';

disp(['Pr�ctica entregada por ',Nombre]);
%% Ejercicio 1
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Soluci�n del ejercicio 1    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aqu� la soluci�n del Ejercicio 1
clear; % 
syms x;
f(x)=x+x/log(x);
pretty(f);
limit(f,x,inf);
limit(f,x,-inf);
limit(f,x,1,'left');
limit(f,x,1,'right');
m=limit(f(x)/x,x,inf);
n=limit(f(x)-m*x,x,inf);
corte=solve(f==0);
double(corte);
df=diff(f,x);
solve(df);
min=exp(1/(5^(1/2)/2 + 1/2));
max=exp(-1/(5^(1/2)/2 - 1/2));


disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 1          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio 2
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Soluci�n del ejercicio 2    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aqu� la soluci�n del Ejercicio 2
clear; % 
syms x;
f(x)=log(1-(x/2));
pretty(f);
P4=taylor(f,x,0,'Order',5);
P4(0.5);

df5=diff(f,x,5);
df5(0);
df5(0.5);
error=(df5(0)/(5*4*3*2*1))*x^5;


disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 2          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio 4
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Soluci�n del ejercicio 4    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aqu� la soluci�n del Ejercicio 4
clear; % 
syms x y;
f(x,y)=x^2+y^2;
pretty(f);
f(-3,2);
dyf=diff(f,y);
ezsurfc(f,[-2,2,-2,2]);


disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 4          %%%%%%%%%%%%%%%%%%%%');

%% Ejercicio 3
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%    Soluci�n del ejercicio 3    %%%%%%%%%%%%%%%%%%%%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
% Introduce aqu� la soluci�n del Ejercicio 3
clear; % 
syms x;
f(x)=1/(x^2-x);
g(x)=1/(x^3+x);
pretty(f);
pretty(g);
solve(f-g);
solve(g-f);
ezplot(f,[-3,3]);
hold on;
ezplot(g,[-3,3]);
area=int(f(x)-g(x),x,2,3);
double(area);


disp('%%%%%%%%%%%%%%%%%%%%        Fin del Ejercicio 3          %%%%%%%%%%%%%%%%%%%%');


