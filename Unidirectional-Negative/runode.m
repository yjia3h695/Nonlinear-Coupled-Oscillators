function DATA=runode(mode)
global k t;
k=mode;
%options = odeset('RelTol',1e-6,'AbsTol',[1e-12 1e-12 1e-12 1e-12]);
[t,y] = ode45('coupled',[0:0.01:1000],[0 0.5 0 0.5]);
E1=y(:,1);
E2=y(:,3);

DATA=[t E1 E2];