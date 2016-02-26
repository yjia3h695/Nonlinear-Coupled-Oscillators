function C=get_network
N=10;%number of electrodes
Rp=1;%resistance between most downstream electrode to the resevior
Rc=ones(1,N)';%resistance between electrodes

for k=1:N
    Rtot(k)=Rp+[1:k]*Rc(1:k)
end
Rtot;
for k=2:N
    K(k)=Rc(k)./(Rtot(k)*Rtot(k-1));
end
K
for k=1:N-1
    for l=k+1:N
        C(k,l)=sum(K(l:N));
    end

C(N,:)=0;
end
C2=transpose(C);
C=C+C2;
HeatMap(C)