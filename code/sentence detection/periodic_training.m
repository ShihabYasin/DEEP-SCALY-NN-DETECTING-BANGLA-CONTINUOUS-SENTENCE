clc
load e:\net_word.mat
nn = net_word;


% LOADING DATA FROM FILES 
  inn = ddd' ;

ouu = outt(1:5,:);  % TAKE target DATA FROM target_data FILE 
TargetData = ouu;
TrainData = inn;

TestData = TrainData ; % LET 


[net2,tr] = train(nn,TrainData,TargetData);

delete('e:\net_word.mat');
net_word = net2 ;

save e:\net_word
clear all;

