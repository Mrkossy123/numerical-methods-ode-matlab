clear all;


m=9;%kg
d=1;%metres
Iz=0.38;%kg*m^2

AM=4294;  

f1= AM/7000; 
f2= AM/7000; % sthn 1h periptwsh efarmosthke gia f2=AM/7000 enw sthn 2h periptwsh efarmozoume gia f2=AM/8000

btheta=5-(AM/5000);

Kps=5;
Kds=15 + AM/1000;
s0=0;
sdes=AM/200;

th0=0;

bs=3+(AM/5000);





h=0.001;
t=0:h:30;  

Z1=@(t,x,y) (y);
N2=@(t,x,y) (((Kps*(sdes-x)-Kds*y)-bs*abs(y)*y)/m);

i0=0

%Aplh Methodos tou Euler
%Dino Arkikes times 
x1(1) = s0;
y1(1) = th0;

i=length(t);

for n=1:i-1
    x1(n+1)=x1(n)+h*Z1(t(n),x1(n),y1(n));
    y1(n+1)=y1(n)+h*N2(t(n),x1(n),y1(n));
end

figure;
plot(t,x1)
grid
title('Graph Euler s');

figure;
plot(t,y1)
grid
title("Graph Euler: s'")


%Beltiomeni Methodo tou Euler
%Dino arxikes times sthn beltiomeni tou euler
x2(1)=s0;
y2(1)=th0;

for n=1:i-1
    x2(n+1)=x2(n)+(h/2)*(Z1(t(n),x2(n),y2(n))+Z1(t(n)+h,x2(n)+h*Z1(t(n),x2(n),y2(n)),y2(n)+h*N2(t(n),x2(n),y2(n))));
    y2(n+1)=y2(n)+(h/2)*(N2(t(n),x2(n),y2(n))+N2(t(n)+h,x2(n)+h*Z1(t(n),x2(n),y2(n)),y2(n)+h*N2(t(n),x2(n),y2(n))));
end




figure;
plot(t,x2)
grid
title('Graph Beltiomeni Euler s')



figure;
plot(t,y2)
grid
title("Graph Beltiomeni Euler s'")

