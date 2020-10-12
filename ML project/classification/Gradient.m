function  [theta] = Gradient(theta,X,y,alpha,m)
  
 for i=1 :300 

 Z = X * theta; 

H = 1./(1+e.^-Z);
   
   
   
  theta -=( (alpha/m) * (X' *(H-y)) );
    
    
    endfor
  
  
  
  
  
  
endfunction
