% Práctica 2 de Cálculo
%% Límites
clear
clc
%
syms x
f(x)=sin(x)/x;% en x=0
L1=limit(f,0);
L2=limit((x-2)/(x^2-4),2); % 1/4
L3=limit(1/(x),0);% NO EXISTE
L4=limit(1/(x),x,0,'left');% -inf
L5=limit(1/(x),x,0,'right');% inf
L6=limit(sin(5*x)/(log(1+4*x)),x,0);% 5/4
L7=limit(log(1+sin(4*x))/(exp(sin(5*x))-1),x,0); % 4/5

%% Ejercicio 2.1
clear
clc
syms x
L0=limit((exp(-x)-1)/x,x,0); % -1
L1=limit(cos(x)^(1/sin(x)),x,0); % 1
L2=limit(((2*x+3)/(2*x+1))^(x+1),x,inf); % e
L3=limit(exp(tan(x)),x,(pi/2)); % no existe

%% Asíntotas y continuidad
clear
clc
syms x
f1(x)=(2*x^2+3)/5;% x<=1
f2(x)=6-5*x;% x>1 , x<3
f3(x)=x-3;% x>=3
% x=1, continuidad
L01=limit(f1,x,1,'left'); % 1
L02=limit(f2,x,1,'right'); % 1
val_1=f1(1); % 1
% --> f es continua en 1
% x=3
L03=limit(f2,x,3,'left'); % -9
L04=limit(f3,x,3,'right'); % 0
% --> f discontinua en 3
fplot(f1,[-10 1])
hold on % dibujar en la misma ventana 
fplot(f2,[1 3])
fplot(f3,[3 10])

%% Estudio función
clear
clc
close all
syms x
f(x)=(x^2+1)/x+abs(x)+1; % Dominio R-{0}
fplot(f,[-10 10])
% x=0
L1=limit(f,x,0,'left'); % -inf
L2=limit(f,x,0,'right'); % inf
% --> asintota vertical x=0
% asintotas horizontales
L3=limit(f,-inf); % 1 -->  y=1
L4=limit(f,inf); % inf --> buscar oblicua
% asintota oblicua: y=mx+n en inf
m=limit(f(x)/x,inf); % m=2
n=limit(f(x)-m*x,inf); % n=1
% --> y=2x+1 asin oblicua

%% Ejercicio 2.3 a) c) d)
clear
clc
close all
syms x

% a)
f1(x)=(x^2+2)/(x-3); % Dominio R-{3}
fplot(f1,[5 8]);
% x=3
L1=limit(f1,x,3,'left'); % -inf
L2=limit(f1,x,3,'right'); % inf
% --> asin vertical x=3
% asintotas horizontales
L3=limit(f1,-inf); % -inf
L4=limit(f1,inf); % inf
% asintota oblicua
m=limit(f1(x)/x,inf); % m=1
n=limit(f1(x)-m*x,inf); % n=3
% --> y=x+3 asin oblicua


% c)
f2(x)=x^2*exp(-x); %Dominio R
fplot(f2,[-2 6]);
L5=limit(f2,-inf); % inf
L6=limit(f2,inf); % 0
% --> asin horizontal x=0
% --> no hay oblicua


% d)
f3(x)=log(x^2)/x; %Dominio R-{0}
fplot(f3,[-6 6]);
% x=0
L8=limit(f3,x,0,'left'); % inf
L9=limit(f3,x,0,'right'); % -inf
% --> asin vertical en x=0
L10=limit(f3,-inf); % 0
L11=limit(f3,inf); % 0
% --> asin horizontal x=0
% --> no hay oblicua

%% Derivadas
clear
clc
close all
%
syms x
f(x)=x*sin(x);
df=diff(f); % primera derivada
df2=diff(f,x,2); % segunda derivada
g(x)=log(x);
dg=diff(g); % primera derivada
dg2=diff(g,x,2); % segunda derivada
dg3=diff(g,x,3);
dg7=diff(g,x,7);

% Estudio de funciones
f(x)=x/(1+x^2);
fplot(f,[-3 3])
df(x)=simplify(diff(f));
% donde se anula la primera derivada
sol1=solve(df); % -1, 1
df(-2);
df(0);
df(3);
% --> extremos: -1 min, 1 max
df2(x)=simplify(diff(f,x,2));
sol2=solve(df2); % 0, sqrt(3), -sqrt(3)

% % % % %

g(x)=(x^2-4*x+4)/x^3;% Dom R-{0}
% x=0
fplot(g,[-2,10])
grid on
L1=limit(g,x,0,'left'); % -inf
L2=limit(g,x,0,'right'); % inf
% --> asin vertical x=0

L3=limit(g,-inf); % 0
L4=limit(g,inf); % 0
% --> asin horizontal x=0
% --> no hay oblicua


dg(x)=simplify(diff(g));
sol3=solve(dg); % 2, 6
dg(1);
dg(3);
dg(7);

dg2=simplify(diff(g,x,2));
sol4=double(solve(dg2)); % 2.5359, 9.4641

%% Pág. 10 (ejercicio 2)
clear
clc
close all
syms x
f(x)=x+(1/(x-2))
fplot(f,[-5 5])
%x=2
L0=limit(f,x,2,'left'); % -inf
L1=limit(f,x,2,'right'); % inf
% --> asin vertical en x=2
L2=limit(f,inf); % inf
L3=limit(f,-inf); % -inf
% no hay asin horizontal
% miramos oblicua
m=limit(f(x)/x,inf); % m=1
n=limit(f(x)-m*x,inf); % n=0
% --> asintota oblicua y=x

df(x)=simplify(diff(f));
sol1=solve(df); % max 1, min 3
df(0);
df(2.5);
df(4);

df2=simplify(diff(f,x,2));
sol2=double(solve(df2))









