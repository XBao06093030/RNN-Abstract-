function netact=forw3(netwk,pats)
netact.stim=pats.stim;
% netact.hid2=layersigpn(netact.stim,netwk.wih2,netwk.hbias2) ;
netact.hid2=layersigpn(netact.stim,netwk.wih2,netwk.hbias2);

netact.hid=layersigpn(netact.hid2,netwk.wih,netwk.hbias) ;
netact.out=layersig01(netact.hid,netwk.whout,netwk.obias) ;
% netact.out=layersigpn(netact.hid,netwk.whout,netwk.obias) ;
end