clc
load e:\net_speaker.mat
nn = net_speaker;


% LOADING DATA FROM FILES 
  inn = ddd' ;

ouu = outt(1:3,:);  % TAKE target DATA FROM target_data FILE 
TargetData = ouu;
TrainData = inn;

TestData = TrainData ; % LET 


[net2,tr] = train(nn,TrainData,TargetData);

delete('e:\net_speaker.mat');
net_speaker = net2 ;

save e:\net_speaker
clear all;

