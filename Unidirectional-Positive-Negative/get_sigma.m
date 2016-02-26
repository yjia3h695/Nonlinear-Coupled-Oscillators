function sigma=get_sigma(DATA)
global mp
p1=DATA(:,2);
p2=DATA(:,3);
ssdataa=p1-mean(p1);ssdatab=p2-mean(p2);
Ha=hilbert(ssdataa);Hb=hilbert(ssdatab);
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));
pc=pa-pb;
meanp=mean(pc);
mp=mod(meanp,2*pi);

dp=mod(pc,2*pi);
[ny,nx]=hist(dp,[0:0.01:2*pi]);

pk=ny/sum(ny);
%bar(nx,pk);
%axis([0 2*pi 0 1]);
ind=find(pk==0);
pk(ind)=[];
Smax=log(length(nx));
S=-1*sum(pk.*log(pk));
sigma=1-S/Smax;