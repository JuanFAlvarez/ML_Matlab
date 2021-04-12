%pre-processing for Question c
%only petal_length and sepal_width

iris=readtable('iris.data','filetype','text')%reads unspecified format as text
iris.Properties.VariableNames{1} = 'sepal_length'; %labels the columns
iris.Properties.VariableNames{2} = 'sepal_width';
iris.Properties.VariableNames{3} = 'petal_length';
iris.Properties.VariableNames{4} = 'petal_width';
iris.Properties.VariableNames{5} = 'species';


iris_alldata=iris(:,:) %all since no exclusion needed

%dataset1- only petal_length and sepal_width
%dataset->p1

randindex=randperm(height(iris)); %using height rather than length due to nature of import of data

training_data_p1=iris(randindex(1:105),1:[3,2]); %columns: petal_length->3 sepal_width->2
training_labels_p1=iris(randindex(1:105),5);%column 5 is species 

test_data_p1=iris(randindex(105:150),1:[3,2]); %remainer of randomly sorted data without labels
test_labels_p1=iris(randindex(105:150),5);%labels for accuracy testing


%dataset2 - only sepal_length,sepal_width 
%dataset->p2

randindex2=randperm(height(iris)); %using height rather than length due to nature of import of data

training_data_p2=iris(randindex(1:105),1:[1,2]); %columns: sepal_length->1 sepal_width->2
training_labels_p2=iris(randindex(1:105),5);%column 5 is species 

test_data_p2=iris(randindex(105:150),1:[1,2]); %remainer of randomly sorted data without labels
test_labels_p2=iris(randindex(105:150),5);%labels for accuracy testing

