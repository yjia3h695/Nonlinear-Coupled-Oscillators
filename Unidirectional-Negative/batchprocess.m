function batchprocess

AD=[-0.05:0.001:0];
filename='yx1_';
snumber=100;

for k=1:length(AD)
    ad=AD(k);
    fin=strcat(filename,num2str(snumber+k),'.dat');
    SDATA=load(fin);
    DATA=SDATA(10000:end,:);
    %T=getperiod(DATA);
    %sigma=get_sigma(DATA);
    freq1=get_freq1(DATA);
    freq2=get_freq2(DATA);
    dfreq=freq1-freq2;
    dp=getdp(DATA);
  %  SAVEDP=zeros(length(dp) ,1);
   % for ii=1:length(dp)
        %SAVEDP(ii,1)=dp(ii);
    %end
    SAVEDATA(k,[1:5])=[ad dfreq freq1 freq2 dp];
    
end

save -ascii yx1_100_T.dat SAVEDATA


