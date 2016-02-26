function dy=copper3(t,y);
global R
dy=zeros(3,1);
m=120;R=0.03545*0.564;V0=0;sr=0.05;cd=0.1;d=0.18;
V=V0+sr*t;
%d=d0+dr*t;
E=y(1);
u=y(2);
w=y(3);

if E<=35
    theta=1;
elseif E>35
    theta=exp(-0.5*(E-35)^2);
end
k=2.5*theta^2+0.01*exp(0.5*(E-30));
dy(1)=((V-E)/R-m*k*u)/cd;
dy(2)=-1.25*d^0.5*k*u+2*d*(w-u);
dy(3)=1.6*d*(2-3*w+u);