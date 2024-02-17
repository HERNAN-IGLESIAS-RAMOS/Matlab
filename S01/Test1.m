% Hernán Iglesias Ramos

%% Ej1
clear
clc
a=sqrt(4.8^2+2.4^2);
L=7.2+2.4+a+7.2+4.8
Superficie=(7.2+(7.2+2.4))*4.8/2 %(a+b)h/2

%% Ej2
clear
clc
syms x y
lado(x,y)=sqrt(x^2+(y/2)^2);
sol_lado=double(lado(3.5,6.6));
perimetro(x,y)=y+y+y+sol_lado+sol_lado;
sol_per=double(area(3.5,6.6));
area(x,y)=y*y+((y+x))/2);
solo_area=double(area(3.5,6.6));

%% Ej3
clear
clc
syms x
f(x)=sin(x)/(cos(x)+1);
sol3_1=double(f(-2));
sol3_2=double(f(2));

%% Ej4
clear
clc
syms x
f(x)=x^2+x-1

%% Ej5
clear
clc
syms x
f(x)=x^4-2*x+1;
sol5_1=double(solve(f));
S=sum(sol5_1);

%% Ej6
clear
clc
syms x
f(x)=x^5-x^4+4*x^2+6*x+4;
sol6_1=double(solve(f(x)));
S=sum(sol6_1);
