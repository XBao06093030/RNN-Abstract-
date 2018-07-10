function [finalNNnet,sKth]=bpttNN(net0,patternNN,patternRL,niter,eta,noise)
netNNK=net0;
for i=1:niter
    [netNNK,s]=cycttNN(netNNK,patternNN,patternRL,eta,noise);
end
finalNNnet=netNNK;
sKth = s;