function netstruct=initnet3(n1,n2,n3,n4,k3Random,k2Random,k1Random)
netstruct.k3=k3Random*(2*rand(n2,n1)-1) ;
netstruct.beta3=k3Random*(2*rand(1,n2)-1);

netstruct.k2=k2Random*(2*rand(n3,n2)-1) ;
netstruct.beta2=k2Random*(2*rand(1,n3)-1) ;

netstruct.k1=k1Random*(2*rand(n4,n3)-1) ;
netstruct.beta1=k1Random*(2*rand(1,n4) -1);
end