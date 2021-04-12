%pre-processing data from iris.data file given to us by the assignment paper and not using built-in matlab dataset
iris=readtable('iris.data','filetype','text')%reads unspecified format as text
iris.Properties.VariableNames{1} = 'sepal_length'; %labels the columns
iris.Properties.VariableNames{2} = 'sepal_width';
iris.Properties.VariableNames{3} = 'petal_length';
iris.Properties.VariableNames{4} = 'petal_width';
iris.Properties.VariableNames{5} = 'species';
iris_alldata=iris(:,:) %all since no exclusion needed
%we will need to further split this data into a real test set and real
%training set randomly
%this goes at start of each iteration
randindex=randperm(height(iris)); %using height rather than length due to nature of import of data
training_data=iris(randindex(1:105),1:4); %without labels
training_labels=iris(randindex(1:105),5);%species
test_data=iris(randindex(105:150),1:4); %remainer of randomly sorted data without labels
test_labels=iris(randindex(105:150),5);%labels for accuracy testing
%end of pre-processing
