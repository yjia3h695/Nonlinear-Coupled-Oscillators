function plotdata
Rind=1000;
dar=1000;
data=load('yx082610_1.dat');
sdata=sgolayfilt(data,2,41);
scurr=sdata(:,2)/Rind*1e6;
nr=size(scurr);
t=[1:nr]'/dar;
ssdataa=sdata(:,2)-mean(sdata(:,2));ssdatab=sdata(:,3)-mean(sdata(:,3));
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));
pc=pa-pb;
n=plot(t,pc);axis([20 30 -0.5 2.5]);
ylabel('\deltaPhase');
xlabel('Time (s)');