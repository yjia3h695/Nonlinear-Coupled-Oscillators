function filt
cr=200;
dar=1000;
mdata=load('rcr23_0.24.dat');
data=mdata(10000:40000,:);
sdata=sgolayfilt(data,2,41);
scurr=sdata(:,[2,3,4])*cr/20;
%scurr=data(:,[1,4])*cr/3;
nr=size(scurr);
t=[1:nr]'/dar;
pote=data(:,1);
F=polyfit(t,pote,1);
spote=F(1)*t+F(2);
subplot(3,4,1);
h=plot(t,scurr(:,1),'b',t,scurr(:,2),'r',t,scurr(:,3),'k');
ylabel('\it{I} \rm(\muA)');
xlabel('\it{t}(s)');

mdata=load('rcr23_0.27.dat');
data=mdata(10000:40000,:);
sdata=sgolayfilt(data,2,41);
scurr=sdata(:,[2,3,4])*cr/20;
%scurr=data(:,[1,4])*cr/3;
nr=size(scurr);
t=[1:nr]'/dar;
pote=data(:,1);
F=polyfit(t,pote,1);
spote=F(1)*t+F(2);
subplot(3,4,5);
h=plot(t,scurr(:,1),'b',t,scurr(:,2),'r',t,scurr(:,3),'k');
ylabel('\it{I} \rm(\muA)');
xlabel('\it{t}(s)');

mdata=load('rcr23_0.30.dat');
data=mdata(10000:40000,:);
sdata=sgolayfilt(data,2,41);
scurr=sdata(:,[2,3,4])*cr/20;
%scurr=data(:,[1,4])*cr/3;
nr=size(scurr);
t=[1:nr]'/dar;
pote=data(:,1);
F=polyfit(t,pote,1);
spote=F(1)*t+F(2);
subplot(3,4,9);
h=plot(t,scurr(:,1),'b',t,scurr(:,2),'r',t,scurr(:,3),'k');
ylabel('\it{I} \rm(\muA)');
xlabel('\it{t}(s)');

mdata=load('rcr23_4.5.dat');
data=mdata(10000:40000,:);
sdata=sgolayfilt(data,2,41);
scurr=sdata(:,[2,3,4])*cr/20;
%scurr=data(:,[1,4])*cr/3;
nr=size(scurr);
t=[1:nr]'/dar;
pote=data(:,1);
F=polyfit(t,pote,1);
spote=F(1)*t+F(2);
subplot(3,4,3);
h=plot(t,scurr(:,1),'b',t,scurr(:,2),'r',t,scurr(:,3),'k');
ylabel('\it{I} \rm(\muA)');
xlabel('\it{t}(s)');

mdata=load('rcr23_9.7.dat');
data=mdata(10000:40000,:);
sdata=sgolayfilt(data,2,41);
scurr=sdata(:,[2,3,4])*cr/20;
%scurr=data(:,[1,4])*cr/3;
nr=size(scurr);
t=[1:nr]'/dar;
pote=data(:,1);
F=polyfit(t,pote,1);
spote=F(1)*t+F(2);
subplot(3,4,7);
h=plot(t,scurr(:,1),'b',t,scurr(:,2),'r',t,scurr(:,3),'k');
ylabel('\it{I} \rm(\muA)');
xlabel('\it{t}(s)');

mdata=load('rcr23_10.dat');
data=mdata(10000:40000,:);
sdata=sgolayfilt(data,2,41);
scurr=sdata(:,[2,3,4])*cr/20;
%scurr=data(:,[1,4])*cr/3;
nr=size(scurr);
t=[1:nr]'/dar;
pote=data(:,1);
F=polyfit(t,pote,1);
spote=F(1)*t+F(2);
subplot(3,4,11);
h=plot(t,scurr(:,1),'b',t,scurr(:,2),'r',t,scurr(:,3),'k');
ylabel('\it{I} \rm(\muA)');
xlabel('\it{t}(s)');