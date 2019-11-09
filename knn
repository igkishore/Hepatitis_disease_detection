clear all;
close all;
clc;
%closing and clearing
hepatitis_data=readtable('hepatitis_2_csv.csv');
hepatitis=table2array(hepatitis_data);
%accesing data set
complete_vars=hepatitis(1:500,1:19);
last_vars= hepatitis(1:500,20:20);
%main dataset
validating_complete_vars=hepatitis(501:568,1:19);
validating_last_vars=hepatitis(501:568,20:20);
%validating dataset
knn_model= fitcknn(complete_vars,last_vars,'NumNeighbors',7,'NSMethod','exhaustive','Distance','minkowski','Standardize',1);
%model
[predicted_class_name,score]=predict(knn_model,validating_complete_vars);
accuracy = (sum(predicted_class_name == validating_last_vars)/numel(validating_last_vars))*100








