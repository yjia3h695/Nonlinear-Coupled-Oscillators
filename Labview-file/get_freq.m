function freq=get_freq(data,daq)
data=data-mean(data);
h=hilbert(data);
p=unwrap(angle((h)));
t=[1:length(p)]./daq;
y=polyfit(t',p,1);
freq=y(1)./2./pi;
A=mean(abs(h))