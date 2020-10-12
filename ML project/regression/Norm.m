function  [x_norm, mu ,segma] = Norm(X)
  
  
  x_norm = X; 
  
  
  mu = zeros(1,size(X,2));
  segma =  zeros(1,size(X,2));
   n= size(X,2);

  for i = 1 : n 
    mu(i) = mean(X(:,i));
    segma(i) = std(X(:,i));
    x_norm(:,i) = (x_norm(:,i)-mu(i))/segma(i);
  endfor

    
  endfunction
