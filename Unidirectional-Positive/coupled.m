function dy=coupled(t,y)
global V R RC
dy=zeros(4,1);
Ch=1600;a=0.3;b=0.00006;gamma1=0.01;gamma2=0.0102;A=1;alpha=1;R=20;V=15;RC=0.8;
%k=0.0021739130434782608695652173913043;
k=RC/(A*R*(R-RC));
%e1=y(1);theta1=y(2);e2=y(3);theta2=y(4);

i1=(((Ch*exp(0.5*y(1)))/(1+(Ch*exp(y(1)))))+(a*exp(y(1))))*(1-y(2));
dy(1)=(((V-y(1))/(A*R))-i1)/alpha;
dy(2)=(((exp(0.5*y(1)))*(1-y(2))/(1+(Ch*exp(y(1)))))-(b*Ch*y(2)*exp(2*y(1))/(0.001*Ch+exp(y(1)))))/gamma1;

i2=(((Ch*exp(0.5*y(3)))/(1+(Ch*exp(y(3)))))+(a*exp(y(3))))*(1-y(4));
dy(3)=(((V-y(3))/(A*R))-i2+(y(1)-y(3))*k)/alpha;
dy(4)=(((exp(0.5*y(3)))*(1-y(4))/(1+(Ch*exp(y(3)))))-(b*Ch*y(4)*exp(2*y(3))/(0.001*Ch+exp(y(3)))))/gamma2;