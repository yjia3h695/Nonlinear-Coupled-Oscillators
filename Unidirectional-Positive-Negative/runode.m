function DATA=runode(mode)
global V R RC R12 k
k=mode;
options = odeset('RelTol',1e-6,'AbsTol',[1e-12 1e-12 1e-12 1e-12]);
[t,y] = ode45('coupled',[0:0.1:4000],[0 0.5 0 0.5],options);

E1=y(:,1);
E2=y(:,3);
c1=(V-E1)/R+RC*(E2-E1)/(R*(R+R12-RC));
c2=(V-E2+c1*R12)/(R+R12);

DATA=[t c1 c2];
%SDATA=DATA(5000:end,:);
%T=[0:0.1:3500.1];

%subplot(2,3,3);
%plot(T,SDATA(:,2),'b-',T,SDATA(:,3),'k-');axis([0 100 -7.5 0]);set(gca, 'YLimMode', 'auto');

%p1=DATA(:,2);
%p2=DATA(:,3);
%sp1=p1-mean(p1);sp2=p2-mean(p2);
%Ha=hilbert(sp1);Hb=hilbert(sp2);
%pa=unwrap(angle((Ha)));

%mean(c1)
%n1=polyfit(t,pa,1);
%freq1=n1(1)/2./pi
%pb=unwrap(angle((Hb)));
%n2=polyfit(t,pb,1);
%freq2=n2(1)/2./pi
%pc=pb-pa;
%subplot(2,3,6);
%plot(t,pc);axis([0 3500 -1 24]);axis 'auto y';

%save('posi.dat', 'DATA', '-ASCII');