% .............................................................     
    function [shape,naturalDerivatives]=shapeFunctionQ8(xi,eta)

    % shape function and derivatives for Q8 elements
    % shape : Shape functions
    % naturalDerivatives: derivatives w.r.t. xi and eta 
    % xi, eta: natural coordinates (-1 ... +1)
   
    shape=[1/4*(1-xi)*(1-eta)*(-eta-xi-1);
           1/4*(1+xi)*(1-eta)*(eta-xi-1);
           1/4*(1+xi)*(1+eta)*(eta+xi-1);
           1/4*(1-xi)*(1+eta)*(-eta+xi-1);
           1/2*(1-xi^2)*(1-eta);    
           1/2*(1+xi)*(1-eta^2);
           1/2*(1-xi^2)*(1+eta);   
           1/2*(1-xi)*(1-eta^2)         ];
                       
    naturalDerivatives=...
            [1/4*(-1)*(1-eta)*(-eta-xi-1)+1/4*(1-xi)*(1-eta)*(-1), 1/4*(1-xi)*(-1)*(-eta-xi-1)+1/4*(1-xi)*(1-eta)*(-1);
             1/4*((eta-1)*(eta-xi+1)-(eta-1)*(xi+1)),              1/4*((xi+1)*(eta-xi+1)+(eta-1)*(xi+1));
             1/4*((eta+1)*(eta+xi-1)+(eta+1)*(xi+1)),              1/4*((xi+1)*(eta+xi-1)+(eta+1)*(xi+1));
             1/4*((eta+1)*(xi-eta+1)+(eta+1)*(xi-1)),              1/4*((xi-1)*(xi-eta+1)-(eta+1)*(xi-1));
             1/2*(-2*xi)*(1-eta),                                  1/2*(1-xi^2)*(-1);
             1/2*(1)*(1-eta^2),                                    1/2*(1+xi)*(-2*eta);
             1/2*(-2*xi)*(1+eta),                                  1/2*(1-xi^2)*(1);
             1/2*(-1)*(1-eta^2),                                   1/2*(1-xi)*(-2*eta)                               ];

    end % end function shapeFunctionQ8
  
