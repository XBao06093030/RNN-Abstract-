function lout=layersigpnR2(x,w,b,range)

lsz=size(x);
% b'*ones(lsz(1),1)'
% w
% x'
% w*x'
% w
% x
lll=b'*ones(lsz(1),1)'+w*x';
% lll
lout=sigpnR2(lll,range)';
end