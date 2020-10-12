 
 
 
 
 data = load('oct.txt'); 
   y= data (:,14);

   m = length(y); % number of training examples

  %X0 = ones(m,1);
  X1 = data (:,4);
  X2= data (:,5);
  X3= data (:,7);
  X4= data (:,8);
    X= [X1(:,1) X2(:,1) X3(:,1) X4(:,1)];

    [x_norm mu segma] = Norm(X);

  X= [ones(m,1) X];

  theta = zeros(5, 1); % initialize fitting parameters
  alpha = 0.2 ;
  num_iter = 400;
##[theta] = Gradient(theta,X,y,alpha,m); 
## f= [ 1.00000    3.47200    1.00000    7.00000];
## f=(f-mu)./segma;
## f=[ones(1,1) f];
## res = f*theta ;
## fprintf('the result is ',res);
 theta = normalEqu(X,y)
 f= [1.00000 1.00000 3.47200 1.00000 7.00000]
 res = f*theta 
 %%fprintf('the result is ',res);