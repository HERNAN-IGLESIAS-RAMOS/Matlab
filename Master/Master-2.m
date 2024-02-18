%% Práctica de laboratorio 2. Cálculo

%% Límites y continuidad de funciones

syms x
limit(sin(x)/x,x,0)
limit((x-2)/(x^2-4),x,2)
limit(1/x,x,0)
limit(1/x,x,0,'right')
limit(1/x,x,0,'left')
limit(1/x,x,+inf)
limit(1/x,x,-inf)

%% Ejemplo 1.1

clear all
syms x
f(x)=sin(5*x)/log(1+4*x);
limit(f(x),x,0)
g(x)=log(1+sin(4*x))/(exp(sin(5*x))-1);
limit(g(x),x,0)

%% Ejemplo 1.2

clear all
syms x
f1(x)=(2*x^2+3)/5
lim1izq=limit(f1(x),x,1,'left')
f2(x)=6-5*x
lim1der=limit(f2(x),x,1,'right')
double(lim1izq)==double(lim1der)
valor1=f1(1)
double(valor1)==double(lim1izq)

lim3izq=limit(f2(x),x,3,'left')
f3(x)=x-3
lim3der=limit(f3(x),x,3,'right')
double(lim3izq)==double(lim3der)

fplot(f1,[-5,1])
hold on
fplot(f2,[1,3])
fplot(f3,[3,5])
hold off
([-5,5,-10,12])
grid on

%% Ejemplo 1.3

clear all
syms x
f(x)=(x^2+1)/x+abs(x)+1;
limit(f(x),x,0,'left') % Calculamos asíntotas verticales
limit(f(x),x,0,'right')

limit(f,x,inf) % Calculamos asíntotas horizontales
limit(f,x,-inf)

m=limit(f(x)/x,x,inf) % Calculamos asíntotas oblícuas
n=limit(f(x)-m*x,x,inf)

fplot(f,[-10,10])
hold on
fplot(1)
fplot(2*x+1,[0,10])

%% Cálculo de derivadas

clear all
syms x
diff(x^2,x)
diff(x*sin(x),x,3)
diff(log(x),x,2)
f(x)=1/x
diff(f), diff(f,2), diff(f,3)
syms y a
diff(cos(a*y),y)

%% Ejemplo 3.1

clear all
syms x
f(x)=x/(1+x^2);
fprima(x)=diff(f)
fprima(x)=simplify(fprima)
fsegunda(x)=diff(f,2)
fsegunda=simplify(fsegunda)

fplot(f,[-3,3])
hold on
fplot(fprima,[-3,3])
fplot(fsegunda,[-3,3])
legend('f','f´','f´´')

cerosfprima=solve(fprima) % Cálculo de máximos y mínimos
f([-3,cerosfprima',3]) % Halla el valor de f en los cuatro puntos a la vez
figure(2), fplot(f,[-3,3])
hold on
plot(-1,f(-1),'r*')
plot(1,f(1),'g*')

%% Ejemplo 3.2

clear all
syms x
f(x)=(x^2-4*x+4)/x^3;
solve(f) % Puntos de corte con los ejes

limit(f(x),x,0,'right') % Asíntotas verticales
limit(f(x),x,0,'left')

limit(f(x),x,Inf) % Asíntotas horizontales
limit(f(x),x,-Inf)

% Monotonía y extremos
fprima(x)=simplify(diff(f))
solve(fprima)
double(fprima([1,2,3,6,9])) % Monotonía
double(f([-2,1,2,3,6,19])) % Extremos

% Concavidad y convexidad
fsegunda=diff(f,2)
double(solve(fsegunda))
double(fsegunda([-4,2,5,10]))

fplot(f,[-8,15])
hold on
fplot(0,[-8,15])

%% Polinomio de Taylor

clear all
syms x, f(x)=exp(x), g(x)=cos(x)
taylor(f,x,2,'Order',4)
taylor(g,x,pi/4,'Order',5)
taylor(f,'Order',5)
taylor(f,'Order',7)

%% Ejemplo 4.1

clear all
syms x
f(x)=sin(x)
tf1=taylor(f,'Order',2)
tf3=taylor(f,'Order',4)
tf5=taylor(f,'Order',6)

fplot(f,[-pi,pi])
hold on
fplot(tf1,[-pi,pi])
fplot(tf3,[-pi,pi])
fplot(tf5,[-pi,pi])
legend('f','tf1','tf3','tf5')