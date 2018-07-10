function yOut= AsimpleModel(un, s, pOpt)

% L = pOpt.L;%Nhor
nnW = pOpt.nnW;%NN Weights
% s = pOpt.s;
% D = pOpt.D;
yn = pOpt.yn;
nHid = pOpt.n2;

sizeU = size(un);
sizeNN = sizeU(2);
% s = s;
sNew = zeros(sizeNN,numel(s));
sNew(1,:) = s;

% un
pattern.smat = un';
pattern.stim = [un' sNew];
pattern.hid = sNew;
getHids = forw3(nnW,pattern);
pattern.hid2 = getHids.hid2;
pattern.out = getHids.out;




response = zeros(sizeNN,length(yn));
state = zeros(sizeNN,length(s));
deepHid = zeros(sizeNN,nHid);

for m = 1:sizeNN
act = forwTT(nnW,pattern,m,0);

state(m,:) = act.hid;
deepHid(m,:) = act.hid2;
response(m,:) = act.out;

end


yOut = response;

% xNN(:,n+D-1)= xTemp(D,:)';
% end

% xout = xNN(length(xn(:,1)),:);
% xout = yOut(sizeNN,:)';
%% no Update laws
     
end
