global V R RC
%k=mode;
options = odeset('RelTol',1e-6,'AbsTol',[1e-12 1e-12 1e-12 1e-12]);
[t,y] = ode45('coupled',[0:0.1:4000],[0 0.5 0 0.5],options);
E1=y(:,1);
E2=y(:,3);

DATA=[t E1 E2];
SDATA=DATA(5000:end,:);
T=[0:0.1:3500.1];

itot1=(V-SDATA(:,2))/R;
itot2=(V-SDATA(:,3)-itot1*RC)/(R-RC);

subplot(2,1,1)
plot(T,itot1,'k',T,itot2,'b');axis([0 50 0 2]);axis 'auto y';
%hold all;
%plot(T,SDATA(:,3),'k-','LineWidth',0.5);axis([180 200 -8.5 0]);

p1=DATA(:,2);
p2=DATA(:,3);
sp1=p1-mean(p1);sp2=p2-mean(p2);
Ha=hilbert(sp1);Hb=hilbert(sp2);
pa=unwrap(angle((Ha)));

save('uips.dat', 'DATA', '-ASCII');
n1=polyfit(t,pa,1);
freq1=n1(1)/2./pi;
pb=unwrap(angle((Hb)));
n2=polyfit(t,pb,1);
freq2=n2(1)/2./pi;
pc=pa-pb;
spc=pc(5000:end,:);
subplot(2,1,2);
plot(T,spc);axis([0 3500 0 40]);axis 'auto y';