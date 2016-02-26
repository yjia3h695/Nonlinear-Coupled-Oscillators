function dy=coupled(t,y)
global R4 R1 R2 R3 V0
dy=zeros(8,1);
Ch=1600;c=0.001;a=0.3;b=0.00006;gamma1=0.01;R4=1;SR=0.01;R1=10;R2=1;R3=1;V0=0;
V=V0+SR*t;
%e1=y(1);theta1=y(2);e2=y(3);theta2=y(4);

i1=(((Ch*exp(0.5*y(1)))/(1+(Ch*exp(y(1)))))+(a*exp(y(1))))*(1-y(2));
dy(1)=-i1+(y(3)-y(1))/R1;
dy(2)=(((exp(0.5*y(1)))*(1-y(2))/(1+(Ch*exp(y(1)))))-(b*Ch*y(2)*exp(2*y(1))/(c*Ch+exp(y(1)))))/gamma1;

i2=(((Ch*exp(0.5*y(3)))/(1+(Ch*exp(y(3)))))+(a*exp(y(3))))*(1-y(4));
dy(3)=-i2+(y(1)-y(3))/R1+(y(5)-y(3))/R2;
dy(4)=(((exp(0.5*y(3)))*(1 -y(4))/(1+(Ch*exp(y(3)))))-(b*Ch*y(4)*exp(2*y(3))/(c*Ch+exp(y(3)))))/gamma1;

i3=(((Ch*exp(0.5*y(5)))/(1+(Ch*exp(y(5)))))+(a*exp(y(5))))*(1-y(6));
dy(5)=-i3+(y(3)-y(5))/R2+(y(7)-y(5))/R3;
dy(6)=(((exp(0.5*y(5)))*(1-y(6))/(1+(Ch*exp(y(5)))))-(b*Ch*y(6)*exp(2*y(5))/(c*Ch+exp(y(5)))))/gamma1;

i4=(((Ch*exp(0.5*y(7)))/(1+(Ch*exp(y(7)))))+(a*exp(y(7))))*(1-y(8));
dy(7)=-i4+(V-y(7))/R4+(y(5)-y(7))/R3;
dy(8)=(((exp(0.5*y(7)))*(1-y(8))/(1+(Ch*exp(y(7)))))-(b*Ch*y(8)*exp(2*y(7))/(c*Ch+exp(y(7)))))/gamma1;