num1=[1];
den1=[.03 1];
sys1=tf(num1,den1)


num2=[1];
den2=[0.0036 1];
sys2=tf(num2,den2)

num3=[9.3];
den3=[.002 1];
sys3=tf(num3,den3)

G= sys1*sys2*sys3

%margin(G)

num4=[5.38];
den4=[1 0];
C=tf(num4,den4)

L=C*G

Gcl=L/(1+L)
margin(Gcl)

%step(Gcl)
%grid

num5=[1];
den5=[1 0];
R=tf(num5,den5)

%step(Gcl*R)
%grid
%subplot(211), step(Gcl)
%grid
%subplot(212), step(Gcl*R)
%grid

