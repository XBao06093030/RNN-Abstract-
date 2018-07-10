function lout=layerlinear(x,w,b)
lsz=size(x);
% 0
% b
% lsz(1)
% w
% x
lll=b'*ones(lsz(1),1)'+w*x';
% 2
lout=sig01(lll)';
% 3