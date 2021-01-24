clc
net_word = network;

net_word.numInputs = 6;
net_word.numLayers = 5;

net_word.biasConnect(1) = 1;
net_word.biasConnect(2) = 1;
net_word.biasConnect(3) = 1;
net_word.biasConnect(4) = 1;
net_word.biasConnect(5) = 1;
%net_word.biasConnect(6) = 1;


net_word.inputConnect(1,1) = 1;
net_word.inputConnect(1,2) = 1;
net_word.inputConnect(1,3) = 1;

net_word.inputConnect(2,2) = 1;
net_word.inputConnect(2,3) = 1;
net_word.inputConnect(2,4) = 1;

net_word.inputConnect(3,3) = 1;
net_word.inputConnect(3,4) = 1;
net_word.inputConnect(3,5) = 1;

net_word.inputConnect(4,4) = 1;
net_word.inputConnect(4,5) = 1;
net_word.inputConnect(4,6) = 1;

net_word.outputConnect = [0 0 0 0 1];
net_word.layerConnect = [0,0,0,0,0;0,0,0,0,0;0,0,0,0,0;0,0,0,0,0;1,1,1,1,0];


net_word.inputs{1}.processFcns = {'removeconstantrows','mapminmax'};
net_word.inputs{2}.processFcns = {'removeconstantrows','mapminmax'};
net_word.inputs{3}.processFcns = {'removeconstantrows','mapminmax'};
net_word.inputs{4}.processFcns = {'removeconstantrows','mapminmax'};
net_word.inputs{5}.processFcns = {'removeconstantrows','mapminmax'};
net_word.inputs{6}.processFcns = {'removeconstantrows','mapminmax'};


net_word.inputs{1}.size = 17;  %% INPUT VECTOR SIZE ,  FEATURE INPUT KORI , FEATURE ER SONKHA KOTO TA BUJAY
net_word.inputs{2}.size = 17;
net_word.inputs{3}.size = 17;
net_word.inputs{4}.size = 17;
net_word.inputs{5}.size = 17;
net_word.inputs{6}.size = 17;

 net_word = init(net_word);                  % BEFORE FUL TRAINING CHECK IT , RUN ,UNCHECK IT 


net_word.layers{1}.size = 50;  % MEANS NO OF NEURONS IN LAYER 1
net_word.layers{1}.transferFcn = 'tansig';
net_word.layers{1}.initFcn = 'initnw';

net_word.layers{2}.size = 50;
net_word.layers{2}.transferFcn = 'tansig';
net_word.layers{2}.initFcn = 'initnw';

net_word.layers{3}.size = 50;
net_word.layers{3}.transferFcn = 'tansig';
net_word.layers{3}.initFcn = 'initnw';

net_word.layers{4}.size = 50;
net_word.layers{4}.transferFcn = 'tansig';
net_word.layers{4}.initFcn = 'initnw';




net_word.layers{5}.size = 5;     %%SPK, OUTPUT VECTOR SIZE ,  OUTPUT VECTOR E ELEMENT  SONKHA KOTO TA BUJAY
net_word.layers{5}.transferFcn = 'tansig';
net_word.layers{5}.initFcn = 'initnw';

%net_word.layers{6}.size = 5;     %%WRD, OUTPUT VECTOR SIZE ,  OUTPUT VECTOR E ELEMENT  SONKHA KOTO TA BUJAY
%net_word.layers{6}.transferFcn = 'tansig';
%net_word.layers{6}.initFcn = 'initnw';


net_word.biases{1}.initFcn = 'midpoint';
net_word.biases{1}.learn = 1;
net_word.biases{1}.learnFcn = 'learnp';

net_word.biases{4}.initFcn = 'midpoint';
net_word.biases{4}.learn = 1;
net_word.biases{4}.learnFcn = 'learnp';

net_word.biases{2}.initFcn = 'midpoint';
net_word.biases{2}.learn = 1;
net_word.biases{2}.learnFcn = 'learnp';

net_word.biases{3}.initFcn = 'midpoint';
net_word.biases{3}.learn = 1;
net_word.biases{3}.learnFcn = 'learnp';

net_word.biases{5}.initFcn = 'midpoint';
net_word.biases{5}.learn = 1;
net_word.biases{5}.learnFcn = 'learnp';

%net_word.biases{6}.initFcn = 'midpoint';
%net_word.biases{6}.learn = 1;
%net_word.biases{6}.learnFcn = 'learnp';




net_word.inputWeights{1,1}.initFcn = 'initlay' ;
net_word.inputWeights{1,1}.learn = 1;
net_word.inputWeights{1,1}.learnFcn = 'learnp';
net_word.inputWeights{1,1}.weightFcn = 'dotprod';

net_word.inputWeights{1,2}.initFcn = 'initlay' ;
net_word.inputWeights{1,2}.learn = 1;
net_word.inputWeights{1,2}.learnFcn = 'learnp';
net_word.inputWeights{1,2}.weightFcn = 'dotprod';

net_word.inputWeights{1,3}.initFcn = 'initlay' ;
net_word.inputWeights{1,3}.learn = 1;
net_word.inputWeights{1,3}.learnFcn = 'learnp';
net_word.inputWeights{1,3}.weightFcn = 'dotprod';

net_word.inputWeights{2,2}.initFcn = 'initlay' ;
net_word.inputWeights{2,2}.learn = 1;
net_word.inputWeights{2,2}.learnFcn = 'learnp';
net_word.inputWeights{2,2}.weightFcn = 'dotprod';

net_word.inputWeights{2,3}.initFcn = 'initlay' ;
net_word.inputWeights{2,3}.learn = 1;
net_word.inputWeights{2,3}.learnFcn = 'learnp';
net_word.inputWeights{2,3}.weightFcn = 'dotprod';

net_word.inputWeights{2,4}.initFcn = 'initlay' ;
net_word.inputWeights{2,4}.learn = 1;
net_word.inputWeights{2,4}.learnFcn = 'learnp';
net_word.inputWeights{2,4}.weightFcn = 'dotprod';


net_word.inputWeights{3,3}.initFcn = 'initlay' ;
net_word.inputWeights{3,3}.learn = 1;
net_word.inputWeights{3,3}.learnFcn = 'learnp';
net_word.inputWeights{3,3}.weightFcn = 'dotprod';

net_word.inputWeights{3,4}.initFcn = 'initlay' ;
net_word.inputWeights{3,4}.learn = 1;
net_word.inputWeights{3,4}.learnFcn = 'learnp';
net_word.inputWeights{3,4}.weightFcn = 'dotprod';

net_word.inputWeights{3,5}.initFcn = 'initlay' ;
net_word.inputWeights{3,5}.learn = 1;
net_word.inputWeights{3,5}.learnFcn = 'learnp';
net_word.inputWeights{3,5}.weightFcn = 'dotprod';

net_word.inputWeights{4,4}.initFcn = 'initlay' ;
net_word.inputWeights{4,4}.learn = 1;
net_word.inputWeights{4,4}.learnFcn = 'learnp';
net_word.inputWeights{4,4}.weightFcn = 'dotprod';

net_word.inputWeights{4,5}.initFcn = 'initlay' ;
net_word.inputWeights{4,5}.learn = 1;
net_word.inputWeights{4,5}.learnFcn = 'learnp';
net_word.inputWeights{4,5}.weightFcn = 'dotprod';

net_word.inputWeights{4,6}.initFcn = 'initlay' ;
net_word.inputWeights{4,6}.learn = 1;
net_word.inputWeights{4,6}.learnFcn = 'learnp';
net_word.inputWeights{4,6}.weightFcn = 'dotprod';



net_word.layerWeights{5,1}.initFcn = 'initlay';
%net_word.layerWeights{6,1}.initFcn = 'initlay';

net_word.layerWeights{5,2}.initFcn = 'initlay';
%net_word.layerWeights{6,2}.initFcn = 'initlay';

net_word.layerWeights{5,3}.initFcn = 'initlay';
%net_word.layerWeights{6,3}.initFcn = 'initlay';

net_word.layerWeights{5,4}.initFcn = 'initlay';
%net_word.layerWeights{6,4}.initFcn = 'initlay';

net_word.layerWeights{5,1}.learn = 1;
%net_word.layerWeights{6,1}.learn = 1;

net_word.layerWeights{5,2}.learn = 1;
%net_word.layerWeights{6,2}.learn = 1;

net_word.layerWeights{5,3}.learn = 1;
%net_word.layerWeights{6,3}.learn = 1;

net_word.layerWeights{5,4}.learn = 1;
%net_word.layerWeights{6,4}.learn = 1;



net_word.layerWeights{5,1}.weightFcn = 'dotprod';
%net_word.layerWeights{6,1}.weightFcn = 'dotprod';
net_word.layerWeights{5,2}.weightFcn = 'dotprod';
%net_word.layerWeights{6,2}.weightFcn = 'dotprod';

net_word.layerWeights{5,3}.weightFcn = 'dotprod';
%net_word.layerWeights{6,3}.weightFcn = 'dotprod';
net_word.layerWeights{5,4}.weightFcn = 'dotprod';
%net_word.layerWeights{6,4}.weightFcn = 'dotprod';

net_word.initFcn = 'initlay';
net_word.performFcn = 'mse';
net_word.trainFcn = 'trainlm';
net_word.divideFcn  = 'dividerand' ;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  % LOADING DATA FROM FILES 
  inn = ddd' ;

ouu = outt(1:5,:);  % TAKE target DATA FROM target_data FILE 
TargetData = ouu;



%TrainData = [inn1 inn2 inn3 inn4 inn5 inn6];
TrainData = inn;

TestData = TrainData ; % LET 
%TrainData =[[1 1;3 2;2 1;1 2;3 2]];   sample 
%TargetData = [[1 1;1 2;2 1]]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%TrainData
%TargetData

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[net_word,tr] = train(net_word,TrainData,TargetData);
save e:\net_word
%clear all;


%net_word = train(net_word,TrainData,TargetData,'CheckpintFile','E://ada.mat','CheckpointDelay',10);
%Y = sim(net_word,TestData);

%Y  % TEST RESULT HOLDS HERE , SEE COMMAND LINE , FOR TEST = TRAIN DATA WILL RESULTS = TO TARGET DATA , SO EXPECTED.

% PLOT ONLY 
%net_word.plotFcns = {'plotperform','plottrainstate'};
%plotconfusion(TargetData,Y);
%plotregression(TargetData,Y);
%plottrainstate(tr);
%plotperform(tr)
%plotroc(TargetData,Y);

%gensim(net_word)

%view(net_word)

