%% Ejc 1
clear
close all
clc
%
syms x
f(x)=-3*x^2+17*x+6;
fplot(f,[-3,3])
sol=solve(f);
I6=double(int(abs(f),-1/3,6));

%% Ejc 2
clear
close all
clc
%
syms x
f(x)=7/(2*x^2+1);
fplot(f,[-5 5])
L_par=isequal(f(x),f(-x));% Par
L1=limit(f,inf); % A. HORIZONTAL y=0
Area=double(int(abs(f-0),-inf,inf));

%% Ejc 3
clear
close all
clc
%
syms x
f(x)=sin(-2*x^2+(22*x/5)+(27/10));
I=int(f,0,1); %No tiene primitiva
fplot(f,[-2 2])
sol=solve(f);% puntos de interseccion con Ox
punto_medio=(sol(1)+sol(2))/2; % punto medio
p7=taylor(f,x,punto_medio,'Order',8);
I_aprox=double(int(p7,punto_medio,sol(2)));

%% Ejc 4
clear
close all
clc
%
syms x
f(x)=exp(3*x^2-9*x-12);
I=int(f,0,1); %No tiene primitiva
p7=taylor(f,x,0,'Order',7);
I_aprox=double(int(p7,0,0.5));





