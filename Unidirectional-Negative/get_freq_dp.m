function freq=get_freq_dp(DATA)
p1=DATA(:,2);
p2=DATA(:,3);
ssdataa=p1-mean(p1);ssdatab=p2-mean(p2);
Ha=diff(hilbert(ssdataa));Hb=diff(hilbert(ssdatab));
pa=unwrap(angle((Ha)));pb=unwrap(angle((Hb)));
Tm=DATA(:,1);
T=Tm(2:end,:);
y=polyfit(T,pa,1);
freq(:,1)=y(1)/(2*pi);
y=polyfit(T,pb,1);
freq(:,2)=y(1)/(2*pi);
dphase=-(pa-pb);
freq(:,3)=mean(mod(dphase,2*pi));
