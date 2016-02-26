function dy=nagetive(t,y)
global k
dy=zeros(4,1);

V=15;R=20;Ch=1600;c=0.001;a=0.3;b=0.00006;c=0.001;gamma1=0.01;gamma2=0.0102;RC=1.935;A=1;
%k=RC/(A*R*(R-2*RC));
%e1=y(1);theta1=y(2);e2=y(3);theta2=y(4);

i1=(((Ch*exp(0.5*y(1)))/(1+(Ch*exp(y(1)))))+(a*exp(y(1))))*(1-y(2));
dy(1)=((V-y(1))/(A*R))-i1+(y(3)-y(1))*k;
dy(2)=(((exp(0.5*y(1)))*(1-y(2))/(1+(Ch*exp(y(1)))))-(b*Ch*y(2)*exp(2*y(1))/(c*Ch+exp(y(1)))))/gamma1;

i2=(((Ch*exp(0.5*y(3)))/(1+(Ch*exp(y(3)))))+(a*exp(y(3))))*(1-y(4));
dy(3)=((V-y(3))/(A*R))-i2+(y(1)-y(3))*k;
dy(4)=(((exp(0.5*y(3)))*(1-y(4))/(1+(Ch*exp(y(3)))))-(b*Ch*y(4)*exp(2*y(3))/(c*Ch+exp(y(3)))))/gamma2;