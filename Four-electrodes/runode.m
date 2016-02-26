function DATA=runode
global R4 R1 R2 R3 V0
options = odeset('RelTol',1e-6,'AbsTol',[1e-12 1e-12 1e-12 1e-12 1e-12 1e-12 1e-12 1e-12]);
[t,y] = ode45('coupled',[0:0.01:10000],[0 0.5 0 0.5 0 0.5 0 0.5],options);
SR=0.01;
V=V0+SR*t;
E1=y(:,1);
E2=y(:,3);
E3=y(:,5);
E4=y(:,7);
i1=(E2-E1)/R1;
i2=(E3-E2)/R2+(E1-E2)/R1;
i3=(E4-E3)/R3+(E2-E3)/R2;
i4=(V-E4)/R4+(E3-E4)/R3;

plot(V,i1,V,i2,V,i3,V,i4);


%DATA=[t E1 E2];  