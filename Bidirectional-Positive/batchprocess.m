function batchprocess

AD=[0:0.001:0.05];
filename='yxR50_';
snumber=100;

for k=1:length(AD)
    ad=AD(k);
    fin=strcat(filename,num2str(snumber+k),'.dat');
    SDATA=load(fin);
    DATA=SDATA(5000:end,:);
    %T=getperiod(DATA);
    sigma=get_sigma(DATA);
    dp=get_dp(DATA);
  %  SAVEDP=zeros(length(dp) ,1);
   % for ii=1:length(dp)
        %SAVEDP(ii,1)=dp(ii);
    %end
    SAVEDATA(k,[1:3])=[ad sigma dp];
    
end

save -ascii yxR50_100_T.dat SAVEDATA


