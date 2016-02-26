function DATA=runode;
global R
options = odeset('RelTol',1e-6,'AbsTol',[1e-12 1e-12 1e-12]);
[t,y] = ode45('copper3',[0:0.1:1200],[0 0.1 0.1],options);
E1=y([301:end],1);
pot=[1.5:0.005:60];
size(E1)
size(pot)
i1=(pot'-E1)/R;

subplot(1,1,1);
plot(pot,i1);
