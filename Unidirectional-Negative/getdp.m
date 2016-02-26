function dp=getdp(DATA)
global k;
p1=DATA(:,2);
p2=DATA(:,3);
ssdataa=p1-mean(p1);ssdatab=p2-mean(p2);
Ha=diff(hilbert(ssdataa));Hb=diff(hilbert(ssdatab));
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));
dphase=pa-pb;
dp=mean(mod(dphase,2*pi));