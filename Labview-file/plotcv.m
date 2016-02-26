function plotcv
cr=60;
dar=1000;
data=load('cv_10-11-23_1723.lvm');
sdata=data;
sdata=sgolayfilt(data,2,5);
scurr=sdata(:,1)*cr/3;
%curr has same unit as cr)
nr=size(scurr);
t=[1:nr]'/dar;
pote=data(:,2);
F=polyfit(t,pote,1);
spote=F(1)*t+F(2);
subplot(2,1,1);
plot(spote,scurr);axis([1.4 1.85 0 30]);
ylabel('Current (\muA)');
xlabel('Potential (V)');