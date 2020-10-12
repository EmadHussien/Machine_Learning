data= load ('heart.txt');
y=data(:,14);

 X=[data(:,1) data(:,2) data(:,3) data(:,4) data(:,5) data(:,6) data(:,7) data(:,8) data(:,9) data(:,10) data(:,11) data(:,12) data(:,13)  ];
Xbe4Norm=X;
 X= Norm(X);

m=length(y);

X0 = ones(m,1);
X=[X0 X];
theta = ones(14,1);

Z = X * theta; 

H = 1./(1+e.^-Z);

J = computeCost(theta,X,H,y,m)
alpha=0.02 ;
 [theta] = Gradient(theta,X,y,alpha,m)

exTrue=  [   1.0000000   0.9506240   0.6798805   1.9698642   0.7626941  -0.2559104   2.3904835  -1.0041707   0.0154173   -0.6954800   1.0855423  -2.2708221  -0.7132490  -2.1453238];
resultTrue=  1./(1+e.^-(exTrue*theta))
exFalse= [   1.0000000   1.5011574   0.6798805  -0.9369647   0.7056755  -1.0276530   2.3904835   0.8974776  -0.3775073   -0.6954800   2.0329402  -0.6480412   1.2425378   1.1211742] ;
resultFalse= 1./(1+e.^-(exFalse*theta))

