function for_phase(mdata)
dar=1000;%data acquisition rate
cr=200;%current range
N=4;%the overall channel been recored
data=mdata(10000:40000,:);%define the data range
sdata=sgolayfilt(data,2,101);%filter of the data overall
scurr=data(:,2)*cr/20;nr=size(scurr);t=[1:nr]'/dar;%define the time scale
%pote=data(:,1);F=polyfit(t,pote,1);spote=F(1)*t+F(2);%filter of the potential

%subplot(2,2,1);
hold all
for k=2:N
    scurr(:,k)=sdata(:,k)*cr/20;
    %plot(t,scurr(:,k));ylabel('\it{I} \rm(\muA)');xlabel('\it{t}(S)');
    
ssdata=sdata(:,k)-mean(sdata(:,k));
H=hilbert(ssdata);
p=unwrap(angle((H)));
fitp=polyfit(t,p,1);
phase(:,k-1)=p;
freq(k-1)=fitp(1)/2./pi;

end

%subplot(2,2,3)
hold all

for num=1:N-1
    for index=1:N-1
    pdiff(:,num)=phase(:,num)-phase(:,index);
    if index==1
    %plot(t,pdiff(:,num));xlabel('\it{t}(S)');ylabel('\Delta \phi (rad)');axis([0 60 0 50])
    else
    end
dp=mod(pdiff(:,num),2*pi);[ny,nx]=hist(dp,[0:0.01:2*pi]);pk=ny/sum(ny);ind=find(pk==0);
pk(ind)=[];Smax=log(length(nx));S=-1*sum(pk.*log(pk));sigma(index,num)=1-S/Smax;
ro(index,num)=abs(mean(exp(pdiff(:,num)*1i)));
    end
end
%sigmb(1,:)=sigma(3,:);sigmb(2,:)=sigma(2,:);sigmb(3,:)=sigma(1,:);
rob(1,:)=ro(3,:);rob(2,:)=ro(2,:);rob(3,:)=ro(1,:);

ro
freq
subplot(3,4,12)
colormap(jet)
imagesc(rob,[0 0.5])

%colorbar('location','eastoutside')

set(gca,'XTick',1:3,...                        
        'XTickLabel',{'1','2','3'},... 
        'YTick',1:3,...
        'YTickLabel',{'3','2','1'},...
        'TickLength',[0 0]);
    
