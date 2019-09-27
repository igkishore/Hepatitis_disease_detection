hepatitis_data=readtable('hepatitis_csv.csv');

hepatitis=table2array(hepatitis_data)

% training data
training_class_name = hepatitis(1:110,20:20);
training_data = hepatitis(1:110,1:19);

% validating data
validating_class_names = hepatitis(111:142,20:20);
validating_data = hepatitis(111:142,1:19);

% getting the svm model using fitcsvm function
SVM_model=fitcsvm(training_data,training_class_name);

% predicting the class names and also the score 
[predicted_class_name,score] = predict(SVM_model,validating_data); 


% checking the accuracy 
accuracy = sum(predicted_class_name == validating_class_names)/numel(validating_class_names)
