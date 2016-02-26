function batchrun

AD=[0:0.1:15];
filename='changeR12_ode_';
snumber=100;

 for k=1:length(AD)
     k;
     ad=AD(k);
    DATA=runode(ad);
    f=strcat(filename,num2str(snumber+k),'.dat');
    save('-ascii',f,num2str('DATA'));
   
 end