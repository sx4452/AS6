function DMAS6
tic;
trainFile = csvread('.\train.csv\train.csv',1,1);
testFile = csvread('.\test.csv\test.csv',1,1);
disp('load complete');
features = trainFile(:,1:end-1);
label = trainFile(:,end);

B = TreeBagger(20000, features, label, 'NVarToSample', 'all');
disp('TreeBager Done');
predict_label = predict(B, testFile);
disp('Predict Done');
csvwrite('Output.csv', predict_label);
disp('All Done');
toc;




end