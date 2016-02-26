function DATA=runode(mode)
global k;
k=mode;
options = odeset('RelTol',1e-6,'AbsTol',[1e-12 1e-12 1e-12 1e-12]);
[t,y] = ode45('coupled',[0:0.1:4000],[0 0.1 0 0.1],options);
%subplot(2,2,1);
%plot(t,y(:,1),t,y(:,3));
E1=y(:,1);
E2=y(:,3);

DATA=[t E1 E2];