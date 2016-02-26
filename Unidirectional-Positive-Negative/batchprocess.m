function batchprocess
global mp freq1 freq2

AD=[0:0.1:15];
filename='changeR12_ode_';
snumber=100;

for k=1:length(AD)    
    ad=AD(k);   
    fin=strcat(filename,num2str(snumber+k),'.dat');
    SDATA=load(fin);
    DATA=SDATA(10000:end,:);
    %T=getperiod(DATA);
    sigma=get_sigma(DATA);
    df=getdf(DATA);
    %pc=getdp(DATA);
  %  SAVEDP=zeros(length(dp) ,1);
   % for ii=1:length(dp)
        %SAVEDP(ii,1)=dp(ii);
    %end
    SAVEDATA(k,[1:6])=[ad sigma freq1 freq2 df mp];
    
end

delete changeR12_ode_*.dat
save -ascii changeR12_ode_t.dat SAVEDATA


