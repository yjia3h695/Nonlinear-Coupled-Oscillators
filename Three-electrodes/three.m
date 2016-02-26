function three
syms V R12 R23 R1 R2 RC e1 e2 e3;

A=[R1+R12+R23+RC R23+RC RC ; 
    R23+RC R1+R12+R23+RC RC;
    RC RC R12+2*R23+R1+RC; ];
b= [V-e1; V-e2; V-e3]
S=A\b
collect(factor(S),V)