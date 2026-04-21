clear all;

 
m=9;%kg   
d=1;%metres    
Iz=0.38;%kg m^2     

AM=4294;  

f1= AM/7000; 
f2= AM/8000;  % ekfonisi % sto deytero peirama AM/8000

s0=AM/1000;  
th0=0;        % ekfonisi



bs=3-(AM/5000);     
bth=5-(AM/5000);    



h=0.001;
t=0:h:30;  % pedio orismou apo 0 ews 30 me vhma 0.001



% typoi apo to a' erotima
Z1=@(t,x,y) (y);
N2=@(t,x,y) ( ((f1+f2)-bs*abs(y)*y) / m );
K3=@(t,w) ( ((d/2)*(f2-f1)-bth*abs(w)*w) / Iz );

i0=0

%METHODOS EULER
% y_a (a_n+1), y_b (b_n+1), y_w (w_n+1) T.B.D
x1(1) = s0;  % arxikopoiisi
y1(1) = i0;  % arxikopoiisi
w1(1) = th0;     % arxikopoiisi

i=length(t); 

for n=1:i-1
    x1(n+1) = x1(n) + h * Z1(t(n),x1(n),y1(n));
    y1(n+1) = y1(n) + h * N2(t(n),x1(n),y1(n));
    w1(n+1) = w1(n) + h * K3(t(n),w1(n));
end


%METHODOS BELTIOMENHS EULER
% y_a_ve (a_n+1), y_a_ve (b_n+1), y_a_ve (w_n+1) T.B.D
x2(1) = s0;
y2(1) = i0;
w2(1) = th0;


%y_a_ve(1) = s0;
%y_b_ve(1) = spar0;
%y_w_ve(1) = i0;



for n=1:i-1
    x2(n+1) = x2(n) + (h/2) * ( Z1( t(n) , x2(n), y2(n)) + Z1( t(n)+h , x2(n)+h*Z1(t(n),x2(n),y2(n)) , y2(n)+h*N2(t(n),x2(n),y2(n)) )  );
    y2(n+1) = y2(n) + (h/2) * ( N2( t(n) , x2(n), y2(n)) + N2( t(n)+h , x2(n)+h*Z1(t(n),x2(n),y2(n)) , y2(n)+h*N2(t(n),x2(n),y2(n)) )  );
    w2(n+1) = w2(n) + (h/2) * ( K3( t(n) , w2(n) ) + K3( t(n)+h , w2(n)+h*K3(t(n),w2(n))) );
end

%s
figure;
plot(t,x1);
grid
title('Graph Euler s');

figure
plot(t,x2);
grid
title('Graph Beltiomeni Euler s');

%i0
figure;
plot(t,y1);
grid
title("Graph Euler s'");

figure
plot(t,y2);
grid
title("Graph Beltiomeni Euler s'");

%w
figure;
plot(t,w1);
grid
title('Graph Euler w');

figure
plot(t,w2);
grid
title('Graph Beltiomeni Euler w');
