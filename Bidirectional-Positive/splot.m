function splot
%data=load('yxR50_100_T.dat');
subplot(1,1,1);
%h=plot(data(:,1),data(:,2));
data=load('yx09152011_100_T.dat');
plot(data(:,1),data(:,2),'rs','MarkerSize',4,'MarkerFaceColor','r');axis([0 0.05 0 0.9]);
hold all;
data=load('yx09142011_100_T.dat');
plot(data(:,1),data(:,2),'b*','MarkerSize',4,'MarkerFaceColor','b');axis([0 0.05 0 0.9]);
hold all;
data=load('yxR50_100_T.dat');
plot(data(:,1),data(:,2),'kd','MarkerSize',4,'MarkerFaceColor','k');axis([0 0.05 0 0.9]);
