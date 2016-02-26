function plotdata
cr=600;
dar=1000;
data=load('yx081210_1.dat');
curr=data(:,2)*cr/3;
%curr has same unit as cr)
nr=size(curr);
t=[1:nr]'/dar;
subplot(2,1,1);
plot(t,curr);
ylabel('Current (\muA)');
xlabel('Time (s)');