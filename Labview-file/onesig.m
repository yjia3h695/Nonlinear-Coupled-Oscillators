function plotdata
cr=60;
Rind=1000000;
dar=1000;
data=load('yx112310_51.dat');
sdata=sgolayfilt(data,2,41);
% scurr=sdata(:,2)/Rind*1e6;
scurr=sdata(:,[2,3])*cr/3;
nr=size(scurr);
t=[1:nr]'/dar;
pote=data(:,1);
F=polyfit(t,pote,1);
spote=F(1)*t+F(2);
subplot(2,1,1);
h=plot(t,scurr(:,1),'b-');axis([0 25 0 25]);
subplot(3,1,2);
ssdata=sdata(:,2)-mean(sdata(:,3));
H=hilbert(ssdata);
m=plot(t,H,'k-');
ylabel('H');
xlabel('Time (s)');
p=unwrap(angle((H)));
n=polyfit(t,p,1);
freq=n(1)/2./pi
A=mean(abs(H));
subplot(3,1,3);
n=plot(t,p,'k-');
ylabel('Phase');
xlabel('Time (s)');