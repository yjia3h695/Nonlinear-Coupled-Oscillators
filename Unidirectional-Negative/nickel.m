function dy=nickel(t,y)
dy=zeros(3,1); 
V=15;R=20;Ch=1600;c=0.001;a=0.3;b=0.00006;gamma1=0.01;gamma2=5.00;alpha=1;
i=(((Ch*exp(0.5*y(1)))/(1+(Ch*exp(y(1)))))+(a*exp(y(1))))*(1-y(2));
dy(1)=((V-y(1))/R)-i;
dy(2)=(((exp(0.5*y(1)))*(1-y(2))/(1+(Ch*exp(y(1)))))-(b*Ch*y(3)*exp(y(1))))/gamma1;
dy(3)=((exp(2*y(1)))*(y(2)-y(3))-(c*Ch*y(3)*exp(y(1))))/(gamma2*alpha);

%options = odeset('RelTol',1e-6,'AbsTol',[1e-12 1e-12 1e-12]);
%[t,y] = ode45(@nickel,[0 500],[0 0.1 0.2],options);
%subplot(2,2,1);
%plot(t,y(:,1));