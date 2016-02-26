function yxsolve

syms R RC e1 e2 e3 e4 V
A=[3*R+RC 2*R+RC R+RC RC;2*R+RC 4*R+RC R+RC RC;R+RC R+RC 5*R+RC RC;RC RC RC 7*R+RC];
B=[1-e1;1-e2;1-e3;1-e4];
S=A\B;i1=S(1),i2=S(2),i3=S(3),i4=S(4)
    