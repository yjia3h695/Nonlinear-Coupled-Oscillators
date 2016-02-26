function p=j_network(N,Rp,R,Rc)
%N=4;%number of electrodes
%Rp=0;%individual resistance attached to the Electrode 1.
%R=1;%resistance between electrodes that next to each other.
%Rc=1;%solution resistance between most downstream electrode to the resirvor

for k=1:N
    Rind(k)=Rp+R*k*(k-1)/2;%The k-th electrode has individual resistance: 
end

for k=1:N
    A(k,k)=Rind(k)+(N-k)*R+Rc;
    for m=k+1:N
        A(k,m)=(N-m)*R+Rc;
        A(m,k)=A(k,m);
    end
end
A;
B=inv(A);
for k=1:N
    B(k,k)=0;
end
p=B;