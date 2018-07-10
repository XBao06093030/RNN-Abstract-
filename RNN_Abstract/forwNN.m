function netact=forwNN(netwk,pats,patno,nois)

netact.stim=pats.smat(patno,:);
% netact.stim=pats.smat;
netact.p1=nlayersigpn(netact.stim,netwk.wih,netwk.hbias,nois);
% netact.hid
netact.p2=layersig01(netact.hid,netwk.whout,netwk.obias);
% netact.out