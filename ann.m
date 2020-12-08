hepatitis_data=readtable('hepatitis_2_csv.csv');

hepatitis=table2array(hepatitis_data);

% Training Data
training_class_name = hepatitis(1:520,20:20);
training_data=hepatitis(1:520,1:19);

% Validating Data
validating_class_names = hepatitis(521:568,20:20);
validating_data = hepatitis(521:568,1:19);

% Input for ANN  
tr1=transpose(training_data);
training_class_name=transpose(training_class_name)
tr2=transpose(validating_data);

% Applying ANN
net = patternnet(10);
view(net)
[net,tr] = train(net,tr1,training_class_name);
nntraintool
plotperform(tr)

% Testing the dataset
testX = tr1(:,tr.testInd);
testT = training_class_name(:,tr.testInd);

testY = net(testX);
testIndices = vec2ind(testY)

% ploting confusion matrix
plotconfusion(testT,testY)
[c,cm] = confusion(testT,testY)
fprintf('Percentage Correct Classification   : %f%%\n', 100*(1-c));
fprintf('Percentage Incorrect Classification : %f%%\n', 100*c);
plotroc(testT,testY)
