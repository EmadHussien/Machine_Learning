function  [theta] = Gradient(theta,X,y,alpha,m)
  
 for i=1 :300 
   
   
    H = X* theta ; 
  theta -=( (alpha/m) * (X' *(H-y)) );
    
    
    endfor
  
  
  
  
  
  
endfunction
