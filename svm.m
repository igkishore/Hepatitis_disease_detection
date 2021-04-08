clc
close all 
clear all 
   while (1==1)
choice=menu('HEPATITIS_DISEASE_PREDICTION','.......TRAINING........','....... TESTING......','........CLOSE........');
if (choice==1)
    hepatitis_data=readtable('hepatitis_csv.xlsx');
hepatitis=table2array(hepatitis_data)
% training data
training_class_name = hepatitis(1:110,20:20);
training_data = hepatitis(1:110,1:19);
% validating data
validating_class_names = hepatitis(111:155,20:20);
validating_data = hepatitis(111:155,1:19);
% getting the svm model using fitcsvm function
SVM_model1=fitcsvm(training_data,training_class_name);
disp('training complete')
end
if(choice==2)
    [predicted_class_name,score] = predict(SVM_model1,validating_data); 
% checking the accuracy 
accuracy = sum(predicted_class_name == validating_class_names)/numel(validating_class_names)*100
helpdlg('testing completed');
disp(accuracy);
end
if(choice==3)
    close all
    clear all
    clc
    return
end
    end
