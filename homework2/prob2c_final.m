num1=[9.3];
den1=[(1/37.2) 1];
sys1=tf(num1,den1)

num2=[1];
den2=[(1/279) 1];
sys2=tf(num2,den2)

num3=[1];
den3=[(1/432.5) 1];
sys3=tf(num3,den3)

G=sys1*sys2*sys3

num4=[1 417.04];
den4=[1 0];
sys4=tf(num4,den4)

num5=[1 1];
den5=[1 2266.1];
sys5=tf(num5,den5)

C=sys4*sys5

T=G*C

rlocus(T)