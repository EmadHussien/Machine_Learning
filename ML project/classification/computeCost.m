function J = computeCost(theta,X ,H,y,m)
  

  Z = X * theta; 
  H = 1./(1+e.^-Z);
  
 J= (-1/m) * ((y'*log(H)) + ((1-y)' *log(1-H))) ;
  
    
endfunction