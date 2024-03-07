Nombre='Hernán Iglesias Ramos';

disp(['Práctica entregada por ',Nombre]);

%Ejercicio 7
syms x y z;
f(x,y,z) = x^2 + y^2 + z^2 + x*y + x*z + y*z + x + y +z;
pretty (f);
fx = diff(f,x);
fy = diff(f,y);
fz = diff(f,z);
solve(fx,fy,fz);
[xs,ys,zs] = solve(fx,fy,fz); %%Minimo.

%%%%%%%%%%%
%Ejercicio 8
syms x y;
f(x,y) = x*y^2 + x^3*y;
f(1,3/2);
fx=diff(f,x); %% en el Este se eleva.
fx(1,3/2);
fy=diff(f,y); 
-fy(1,3/2)%% en direccion Sur se hunde.
solve(fx,fy);
[xs,ys]=solve(fx,fy);
ezcontour(f,[0,2,0,2]);
ezsurfc(f,[0,2,0,2]);
ezsurf(f,[0,2,0,2]), hold on, plot3(xs,ys,zs,'g*');
z=f(1,3/2);
plot3(1,3/2,z,'r*');%representacion del pecio. (x=1,y=3/2) (z=15/4)