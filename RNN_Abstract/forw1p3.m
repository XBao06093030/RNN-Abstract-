function patternNN=forw1p3(netwk,patternNN,k,noise)

patternNN.stim=patternNN.stim(k,:);
% netact.hid2=nlayersigpn(netact.stim,netwk.wih2,netwk.hbias2,nois) ;
patternNN.h=layersigpn2(patternNN.stim,netwk.k3,netwk.beta3);
patternNN.s=layersigpn(patternNN.h,netwk.k2,netwk.beta2);
% netact.hid=layerlinear(netact.hid2,netwk.wih,netwk.hbias) ;
patternNN.y=layerlinear(patternNN.s,netwk.k1,netwk.beta1)+noise; 
% netact.out=layersigpn(netact.hid,netwk.whout,netwk.obias) ;