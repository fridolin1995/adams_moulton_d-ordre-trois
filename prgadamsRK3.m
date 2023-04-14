clear all
close all
format long
fCauchy=@(t,z) fadamsRK3(t,z);
y0=[1;1;1;1];
[t,Y]=REDRK3AMVEC(fCauchy,0,20,y0,0.001);
M=length(t)
t(10)
Y(1,10)
Y(2,10)
Y(3,10)
Y(4,10)
t(M)
Y(1,M)
Y(2,M)
Y(3,M)
Y(4,M)

figure(1)
plot(Y(1,:),Y(2,:),'k-','LineWidth',3);
xlabel('x'),ylabel('y')
print -dpdf fig01-adams.pdf

figure(2)
subplot(3,1,1)
plot(t,Y(1,:),'r-','LineWidth',3);
xlabel('x'),ylabel('y')
subplot(3,1,2)
plot(t,Y(2,:),'r-','LineWidth',3);
xlabel('x'),ylabel('y')
subplot(3,1,3)
plot(t,Y(3,:),'r-','LineWidth',3);
xlabel('x'),ylabel('y')
print -dpdf fig02-adams.pdf

