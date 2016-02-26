function plotdata
Rind=1000;
dar=1000;
data=load('yx082610_15.dat');
sdata=sgolayfilt(data,2,41);
scurr=sdata(:,[2,3])/Rind*1e6;
nr=size(scurr);
t=[1:nr]'/dar;
total=scurr(:,1)+scurr(:,2);
subplot(2,1,1);
h=plot(t,total);
ylabel('Current (\muA)');
xlabel('Time (s)');