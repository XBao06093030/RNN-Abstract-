function squash=sig01(x)
% squash=1./(1+exp(-x)) ;
% squash(1,:)=x(1,:);
% squash(2,:)=(1-exp(-x(2,:)))./(1+exp(-x(2,:))) ;
% d=size(x);
% squash = zeros(d(1),d(2));
% squash
% squash(1)=x(1);
% squash(2)=(1-exp(-x(2)))./(1+exp(-x(2))) ;
% squash(1,:)=x(1,:);
squash=x;
% squash(2,:)=x(2,:);
% squash(3,:)=(1-exp(-x(3,:)))./(1+exp(-x(3,:)));
% squash(4,:)=(1-exp(-x(4,:)))./(1+exp(-x(4,:)));
% squash=x;
% x(1)
% x
% squash