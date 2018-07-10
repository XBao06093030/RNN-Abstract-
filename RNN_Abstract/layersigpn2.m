function lout=layersigpn2(x,w,b)

lsz=size(x);
% b'*ones(lsz(1),1)'
% w
% x'
% w*x'% w
% x

lll=b'*ones(lsz(1),1)'+w*x';
lout=sigpn2(lll)';
end