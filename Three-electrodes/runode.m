function [data]=runode(mode)
global V R RC
%k=mode;
options = odeset('RelTol',1e-6,'AbsTol',[1e-12 1e-12 1e-12 1e-12 1e-12 1e-12]);
[t,y] = ode45('coupled',[0:0.1:4000],[0 0.5 0 0.5 0 0.5],options);
E1=y(:,1);
E2=y(:,3);
E3=y(:,5);

DATA=[t E1 E2 E3];
SDATA=DATA(5000:end,:);
T=[0:0.1:3500.1];

subplot(2,1,1);
plot(T,SDATA(:,2),'b-','LineWidth',2);%axis([0 200 -7.5 0]);
hold all;
plot(T,SDATA(:,3),'r-','LineWidth',0.5);%axis([0 200 -7.5 0]);
plot(T,SDATA(:,4),'k-','LineWidth',0.5);%axis([0 200 -7.5 0]);


p1=DATA(:,2);
p2=DATA(:,3);
sp1=p1-mean(p1);sp2=p2-mean(p2);
Ha=hilbert(sp1);Hb=hilbert(sp2);
pa=unwrap(angle((Ha)));

mean(E1)
n1=polyfit(t,pa,1);
freq1=n1(1)/2./pi
pb=unwrap(angle((Hb)));
n2=polyfit(t,pb,1);
freq2=n2(1)/2./pi
pc=pa-pb;
subplot(2,1,2);
plot(t,pc);axis([0 3500 -1 24]);axis 'auto y';

save('posi.dat', 'DATA', '-ASCII');