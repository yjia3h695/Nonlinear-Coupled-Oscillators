function splot
subplot(2,2,1);
data=load('changeRC_ode_t.dat');
plot(data(:,1)*1.29,data(:,5));

subplot(2,2,2)
data=load('changeRC_ode_t.dat');
plot(data(:,1)*1.29,data(:,6));

subplot(2,2,3);
data=load('changeRC_ode_t.dat');
plot(data(:,1)*1.29,data(:,3),data(:,1)*1.29,data(:,4));
