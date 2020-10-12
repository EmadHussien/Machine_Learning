function J = compute(X,y,theta)

%Reading data 
   m = length(y); % number of training examples
  
 % X= [X0(:,1), X1(:,1),X2(:,1),X3(:,1),X4(:,1)];
  H=( X*theta);
  J = (1/(2*m)) * sum(((H-y)).^2);



endfunction


