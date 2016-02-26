function splot
data=load('yx1_100_T.dat');
subplot(2,2,1);
h=plot(data(:,1),data(:,2));
subplot(2,2,2);
h=plot(data(:,1),data(:,5));

data=load('yx1!_100_T.dat');
subplot(2,2,3);
h=plot(data(:,1),data(:,2));
subplot(2,2,4);
h=plot(data(:,1),data(:,5));
