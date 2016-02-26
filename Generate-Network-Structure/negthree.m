function negthree

syms R1 R2 R3 R12 R23 V e1 e2 e3%UNIDIRECTIONAL POSITIVE
A=[R1 0 0;-R12 R2 0;-R12-R23 -R23 R3];
B=[V-e1;V-e2;V-e3];
S=A\B;i1=S(1),i2=S(2),i3=S(3)