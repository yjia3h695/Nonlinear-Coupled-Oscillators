function phase
dar=1000;
cr=200;
mdata=load('rcr23_0.24.dat');
data=mdata(1:end,:);
sdata=sgolayfilt(data,2,41);
scurr=data(:,2)*cr/20;
nr=size(scurr);
t=[1:nr]'/dar;
ssdataa=sdata(:,2)-mean(sdata(:,2));ssdatab=sdata(:,3)-mean(sdata(:,3));ssdatac=sdata(:,4)-mean(sdata(:,4));
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);Hc=hilbert(ssdatac);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));pc=unwrap(angle((Hc)));
na=polyfit(t,pa,1);
freqa=na(1)/2./pi;
nb=polyfit(t,pb,1);
freqb=nb(1)/2./pi;
nc=polyfit(t,pc,1);
freqc=nc(1)/2./pi;

dea=pa-2*pi*freqa*t;
deb=pb-2*pi*freqa*t;
dec=pc-2*pi*freqa*t;

p1=pb-pa;
p2=pc-pa;
p3=pb-pc;

subplot(3,4,2);
plot(t,p1,'b',t,p2,'r',t,p3,'k');xlabel('\it{t}(s)');ylabel('\Delta \phi (rad)');



mdata=load('rcr23_0.27.dat');
data=mdata(1:end,:);
sdata=sgolayfilt(data,2,41);
scurr=data(:,2)*cr/20;
nr=size(scurr);
t=[1:nr]'/dar;
ssdataa=sdata(:,2)-mean(sdata(:,2));ssdatab=sdata(:,3)-mean(sdata(:,3));ssdatac=sdata(:,4)-mean(sdata(:,4));
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);Hc=hilbert(ssdatac);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));pc=unwrap(angle((Hc)));
na=polyfit(t,pa,1);
freqa=na(1)/2./pi;
nb=polyfit(t,pb,1);
freqb=nb(1)/2./pi;
nc=polyfit(t,pc,1);
freqc=nc(1)/2./pi;

dea=pa-2*pi*freqa*t;
deb=pb-2*pi*freqa*t;
dec=pc-2*pi*freqa*t;

p1=pb-pa;
p2=pc-pa;
p3=pb-pc;

subplot(3,4,6);
plot(t,p1,'b',t,p2,'r',t,p3,'k');xlabel('\it{t}(s)');ylabel('\Delta \phi (rad)');



mdata=load('rcr23_0.30.dat');
data=mdata(1:end,:);
sdata=sgolayfilt(data,2,41);
scurr=data(:,2)*cr/20;
nr=size(scurr);
t=[1:nr]'/dar;
ssdataa=sdata(:,2)-mean(sdata(:,2));ssdatab=sdata(:,3)-mean(sdata(:,3));ssdatac=sdata(:,4)-mean(sdata(:,4));
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);Hc=hilbert(ssdatac);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));pc=unwrap(angle((Hc)));
na=polyfit(t,pa,1);
freqa=na(1)/2./pi;
nb=polyfit(t,pb,1);
freqb=nb(1)/2./pi;
nc=polyfit(t,pc,1);
freqc=nc(1)/2./pi;

dea=pa-2*pi*freqa*t;
deb=pb-2*pi*freqa*t;
dec=pc-2*pi*freqa*t;

p1=pb-pa;
p2=pc-pa;
p3=pb-pc;

subplot(3,4,10);
plot(t,p1,'b',t,p2,'r',t,p3,'k');xlabel('\it{t}(s)');ylabel('\Delta \phi (rad)');



mdata=load('rcr23_4.5.dat');
data=mdata(1:end,:);
sdata=sgolayfilt(data,2,41);
scurr=data(:,2)*cr/20;
nr=size(scurr);
t=[1:nr]'/dar;
ssdataa=sdata(:,2)-mean(sdata(:,2));ssdatab=sdata(:,3)-mean(sdata(:,3));ssdatac=sdata(:,4)-mean(sdata(:,4));
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);Hc=hilbert(ssdatac);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));pc=unwrap(angle((Hc)));
na=polyfit(t,pa,1);
freqa=na(1)/2./pi;
nb=polyfit(t,pb,1);
freqb=nb(1)/2./pi;
nc=polyfit(t,pc,1);
freqc=nc(1)/2./pi;

dea=pa-2*pi*freqa*t;
deb=pb-2*pi*freqa*t;
dec=pc-2*pi*freqa*t;

p1=pb-pa;
p2=pc-pa;
p3=pb-pc;

subplot(3,4,4);
plot(t,p1,'b',t,p2,'r',t,p3,'k');xlabel('\it{t}(s)');ylabel('\Delta \phi (rad)');



mdata=load('rcr23_9.7.dat');
data=mdata(1:end,:);
sdata=sgolayfilt(data,2,41);
scurr=data(:,2)*cr/20;
nr=size(scurr);
t=[1:nr]'/dar;
ssdataa=sdata(:,2)-mean(sdata(:,2));ssdatab=sdata(:,3)-mean(sdata(:,3));ssdatac=sdata(:,4)-mean(sdata(:,4));
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);Hc=hilbert(ssdatac);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));pc=unwrap(angle((Hc)));
na=polyfit(t,pa,1);
freqa=na(1)/2./pi;
nb=polyfit(t,pb,1);
freqb=nb(1)/2./pi;
nc=polyfit(t,pc,1);
freqc=nc(1)/2./pi;

dea=pa-2*pi*freqa*t;
deb=pb-2*pi*freqa*t;
dec=pc-2*pi*freqa*t;

p1=pb-pa;
p2=pc-pa;
p3=pb-pc;

subplot(3,4,8);
plot(t,p1,'b',t,p2,'r',t,p3,'k');xlabel('\it{t}(s)');ylabel('\Delta \phi (rad)');


mdata=load('rcr23_10.dat');
data=mdata(1:end,:);
sdata=sgolayfilt(data,2,41);
scurr=data(:,2)*cr/20;
nr=size(scurr);
t=[1:nr]'/dar;
ssdataa=sdata(:,2)-mean(sdata(:,2));ssdatab=sdata(:,3)-mean(sdata(:,3));ssdatac=sdata(:,4)-mean(sdata(:,4));
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);Hc=hilbert(ssdatac);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));pc=unwrap(angle((Hc)));
na=polyfit(t,pa,1);
freqa=na(1)/2./pi;
nb=polyfit(t,pb,1);
freqb=nb(1)/2./pi;
nc=polyfit(t,pc,1);
freqc=nc(1)/2./pi;

dea=pa-2*pi*freqa*t;
deb=pb-2*pi*freqa*t;
dec=pc-2*pi*freqa*t;

p1=pb-pa;
p2=pc-pa;
p3=pb-pc;

subplot(3,4,12);
plot(t,p1,'b',t,p2,'r',t,p3,'k');xlabel('\it{t}(s)');ylabel('\Delta \phi (rad)');
mdata=load('rcr23_0.24.dat');
data=mdata(1:end,:);
sdata=sgolayfilt(data,2,41);
scurr=data(:,2)*cr/20;
nr=size(scurr);
t=[1:nr]'/dar;
ssdataa=sdata(:,2)-mean(sdata(:,2));ssdatab=sdata(:,3)-mean(sdata(:,3));ssdatac=sdata(:,4)-mean(sdata(:,4));
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);Hc=hilbert(ssdatac);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));pc=unwrap(angle((Hc)));
na=polyfit(t,pa,1);
freqa=na(1)/2./pi;
nb=polyfit(t,pb,1);
freqb=nb(1)/2./pi;
nc=polyfit(t,pc,1);
freqc=nc(1)/2./pi;

dea=pa-2*pi*freqa*t;
deb=pb-2*pi*freqa*t;
dec=pc-2*pi*freqa*t;

p1=pb-pa;
p2=pc-pa;
p3=pb-pc;

subplot(3,4,2);
plot(t,p1,'b',t,p2,'r',t,p3,'k');xlabel('\it{t}(s)');ylabel('\Delta \phi (rad)');