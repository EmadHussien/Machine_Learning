function thetaa = normalEqu(X,y)
  
thetaa = (pinv(X' * X ) *X'* y) ; 
  
endfunction


