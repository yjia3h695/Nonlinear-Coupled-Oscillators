function yxsolve
%syms R12 R1 R2 RC V e1 e2 %BIDIRECTIOANL POSITIVE
%A=[R12+R1+RC,RC;RC,R2+RC]; 
%B=[V-e1;V-e2];
%S=A\B;i1=S(1),i2=S(2)

%syms R1 R2 R12 V e1 e2 %UNIDIRECTIONAL NEGATIVE
%A=[R1 0;-R12,R2];
%B=[V-e1;V-e2];
%S=A\B;i1=S(1),i2=S(2)

syms R1 R2 RC V e1 e2 %UNIDIRECTIONAL POSITIVE
A=[R1 0;RC,R2+RC];
B=[V-e1;V-e2];
S=A\B;i1=S(1),i2=S(2)

%syms R1 R12 RC R2 V e1 e2 %%BIDIRECTIOANL NEGATIVE
%A=[R1+RC+R12,RC;-R12,R2]; 
%B=[V-e1;V-e2];
%S=A\B;i1=S(1),i2=S(2)