function dy=coupled(t,x)
global V R RC R12
dy=zeros(6,1);

Ch=1600;a=0.3;b=0.00006;Gamma1=0.01;Gamma2=0.0102;Gamma3=0.0098;A=1;alpha=1;R=20;V=15;R12=1.2;
R23=10-R12-RC;
kg=RC/(A*R*(R-3*RC));
kl=R23/(A*(R-3*RC))*(R-3*RC-2*R23);
e1=x(1);theta1=x(2);e2=x(3);theta2=x(4);e3=x(5);theta3=x(6);

i1=(((Ch*exp(0.5*e1))/(1+(Ch*exp(e1))))+(a*exp(e1)))*(1-theta1);
dy(1)=(((V-e1)/(A*R))-i1+(e2-e1)*kg+(e3-e1)*kg+(e2-e1)*kl)/alpha;
dy(2)=(((exp(0.5*e1))*(1-theta1)/(1+(Ch*exp(e1))))-(b*Ch*theta1*exp(2*e1)/(0.001*Ch+exp(e1))))/Gamma1;

i2=(((Ch*exp(0.5*e2))/(1+(Ch*exp(e2))))+(a*exp(e2)))*(1-theta2);
dy(3)=(((V-e2)/(A*R))-i2+(e1-e2)*kg+(e3-e2)*kg+(e1-e2)*kl)/alpha;
dy(4)=(((exp(0.5*e2))*(1-theta2)/(1+(Ch*exp(e2))))-(b*Ch*theta2*exp(2*e2)/(0.001*Ch+exp(e2))))/Gamma2;

i3=(((Ch*exp(0.5*e3))/(1+(Ch*exp(e3))))+(a*exp(e3)))*(1-theta3);
dy(5)=(((V-e3)/(A*R))-i3+(e2-e3)*kg+(e1-e3)*kg)/alpha;
dy(6)=(((exp(0.5*e3))*(1-theta3)/(1+(Ch*exp(e3))))-(b*Ch*theta3*exp(2*e3)/(0.001*Ch+exp(e3))))/Gamma3;

