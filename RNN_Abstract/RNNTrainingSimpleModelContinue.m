%three layers
%load('UsedForTrainTrack')
load('halfFreqRNN2')

% load('NetNNTrack1')
T=60;
Ts = 0.01;
N=T/Ts;


n1 = 1+2; %u is 1 dim, s is 2 dim
% Number of hiddens for NN
n2 = 16;
% Number of states for NN
n3 = 2;
% Number of outputs for NN
n4 = 1;
% Randomlize factors for NN
k3Random = 1.0; k2Random = 1.2; k1Random = 0.60;

%initial neural network
% netNN0 = initnet3(n1,n2,n3,n4,k3Random,k2Random,k1Random );
% netNN = netNN0;

nnLengthf = 200;%training steps
nnStepf = 0.008;%training step-size
nnNoisef = 0;%training noise


s0 = [0 0];%For NN initial state
s =[s0; zeros(N-1,length(s0))]; 
% u =zeros(N-1,length(s0)); 

% for m = 1:N
% u(m) = udGeneratorSin(m-1,Ts);
% end

u = udn;


           patternNN.tmat = ydn;%different when n>D
           patternNN.smat = u;%different when n>D
           patternNN.stim = [u(1:N,:) s];%different when n>D
                     
           patternNN.h = zeros(N,n2);%different when n>D
           patternNN.s = s;%different when n>D
           patternNN.y = zeros(N,n4);%different when n>D

           patternRL.u = u(1:N,:);

[netNN,sKth] = bpttNN(netNN,patternNN,patternRL,nnLengthf,nnStepf,nnNoisef);
% s(n+1,:) = sKth;%get s for update NN for next time

response = zeros(N,n4);
state = zeros(N,n3);
deepHid = zeros(N,n2);

for m = 1:N
act = forwTTNN(netNN,patternNN,patternRL,m,nnNoisef);

state(m,:) = act.s;
deepHid(m,:) = act.h;
response(m,:) = act.y;

end

figure(1)
plot(ydn)
hold on
plot(response)

