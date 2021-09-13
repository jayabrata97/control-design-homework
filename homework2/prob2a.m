num1=[1];
den1=[.03 1];
sys1=tf(num1,den1)


num2=[1];
den2=[0.0036 1];
sys2=tf(num2,den2)

num3=[13.95];
den3=[.002 1];
sys3=tf(num3,den3)

G= sys1*sys2*sys3

margin(G)