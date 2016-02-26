function batchrun

AD=[-0.05:0.001:0];
filename='yx1_';
snumber=100;

 for k=1:length(AD)
     k;
     ad=AD(k);
    DATA=runode(ad);
    f=strcat(filename,num2str(snumber+k),'.dat');
    save('-ascii',f,num2str('DATA'));
   
 end