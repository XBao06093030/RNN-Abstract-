function patternNNKTh=forwTTNN(net,patternNN,patternRL,kTh,noise)

for k = 1:kTh
%   if k < patk
patternNNK = forw1p3(net,patternNN,k,noise);

% sMK = patternNNK.s;
% patternNN0.h(i,:) = patternNNK.h;
% patternNN0.y(i,:) = patternNNK.y;

  if k < kTh
% patternNN.stim(k+1,:)
% patternNN.s(k,:)
% [patternRL.u(k,:) patternNN.s(k,:)]
patternNN.stim(k+1,:) = [patternRL.u(k,:) patternNN.s(k,:)];
  else
    break
  end

end
patternNNKTh = patternNNK;
end
