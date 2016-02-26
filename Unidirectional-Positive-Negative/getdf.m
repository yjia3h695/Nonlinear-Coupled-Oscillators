function df=getdf(DATA)
global freq1 freq2
p1=DATA(:,2);
p2=DATA(:,3);
sp1=p1-mean(p1);sp2=p2-mean(p2);
Ha=hilbert(sp1);Hb=hilbert(sp2);

pa=unwrap(angle((Ha)));
n1=polyfit(DATA(:,1),pa,1);
freq1=n1(1)/2./pi;

pb=unwrap(angle((Hb)));
n2=polyfit(DATA(:,1),pb,1);
freq2=n2(1)/2./pi;

df=freq2-freq1;
