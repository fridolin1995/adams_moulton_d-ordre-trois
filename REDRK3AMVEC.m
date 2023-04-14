function [t,Y]=REDRK3AMVEC(f,t0,T,y0,h)
N=(T-t0)/h;
t=t0:h:T;
Y(:,1)=y0;
for n=1:N
       k1=f(t(n),Y(:,n));
       k2=f(t(n)+h/2,Y(:,n)+h/2*k1);
       k3=f(t(n)+h,Y(:,n)-h*k1+2*h*k2);
       Y(:,n+1)=Y(:,n)+(h/12)*(5*k1+8*k2-k3);

  end

end
   
