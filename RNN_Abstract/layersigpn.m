function lout=layersigpn(x,w,b)

lsz=size(x);
% b'*ones(lsz(1),1)'
% w
% x'
% w*x'
lll=b'*ones(lsz(1),1)'+w*x';
lout=sigpn(lll)';
end