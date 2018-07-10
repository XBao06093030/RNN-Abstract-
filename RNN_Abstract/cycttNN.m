function [netNNK,sKth]=cycttNN(netNN,patternNN,patternRL,dt,noise)
netNNK=netNN;

szs=size(patternNN.s);

kTh=ceil(szs(1)*rand());
% kTh=ceil(szs(1)*(rand()*0.2+0.4));

patternNNK = forwTTNN(netNN,patternNN,patternRL,kTh,noise);


odelt=(patternNN.tmat(kTh,:)-patternNNK.y); %output deltas

hdelt=0.5*(netNN.k1'*odelt').*(1+patternNNK.s').*(1-patternNNK.s');%hid deltas

hdelt2=(netNN.k2'*hdelt).*(1+patternNNK.h').*(1-patternNNK.h');%hid2 deltas


netNNK.k1=netNNK.k1+dt*odelt'*patternNNK.s;

netNNK.beta1=netNNK.beta1+dt*odelt;

netNNK.k2=netNNK.k2+dt*hdelt*patternNNK.h;

netNNK.beta2=netNNK.beta2+dt*hdelt';

netNNK.k3=netNNK.k3+dt*hdelt2*patternNNK.stim;

netNNK.beta3=netNNK.beta3+dt*hdelt2';

sKth = patternNNK.s;
end