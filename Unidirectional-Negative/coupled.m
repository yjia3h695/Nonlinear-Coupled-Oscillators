function dy=coupled(t,y)
global k
dy=zeros(4,1);

V=0.631;R=20;Ch=1600;a=0.3;b=0.00006;gamma=0.01;A=1;alpha=0.1;c1=1.05;c2=0.95;
%k=R12/(A*R*(R+R12));
%e1=y(1);theta1=y(2);e2=y(3);theta2=y(4);

i1=(((Ch*exp(0.5*y(1)))/(1+(Ch*exp(y(1)))))+(a*exp(y(1))))*(1-y(2));
dy(1)=c1*(((V-y(1))/(A*R))-i1)/alpha;
dy(2)=(((exp(0.5*y(1)))*(1-y(2))/(1+(Ch*exp(y(1)))))-(b*Ch*y(2)*exp(2*y(1))/(0.001*Ch+exp(y(1)))))/gamma;

i2=(((Ch*exp(0.5*y(3)))/(1+(Ch*exp(y(3)))))+(a*exp(y(3))))*(1-y(4));
dy(3)=c2*(((V-y(3))/(A*R))-i2+(y(3)-y(1))*k)/alpha;
dy(4)=(((exp(0.5*y(3)))*(1-y(4))/(1+(Ch*exp(y(3)))))-(b*Ch*y(4)*exp(2*y(3))/(0.001*Ch+exp(y(3)))))/gamma;