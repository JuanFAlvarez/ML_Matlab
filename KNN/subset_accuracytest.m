clear
iris=readtable('iris.data','filetype','text')%reads unspecified format as text
iris.Properties.VariableNames{1} = 'sepal_length'; %labels the columns
iris.Properties.VariableNames{2} = 'sepal_width';
iris.Properties.VariableNames{3} = 'petal_length';
iris.Properties.VariableNames{4} = 'petal_width';
iris.Properties.VariableNames{5} = 'species';
iris_alldata=iris(:,:); 
k=1;%max number of neighbors
for n=1:k;
    for tests=1:100;%max iterations per neighbor, 100
        %..........processing data.......................
        %dataset1- only sepal_length and sepal_width
        %dataset->p1
        randindex=randperm(height(iris)); %using height rather than length due to nature of import of data
        training_data=iris(randindex(1:105),1:[1,2]); %columns: sepal_length->1 sepal_width->2
        training_labels=iris(randindex(1:105),5);%column 5 is species 
        test_data=iris(randindex(105:150),1:[1,2]); %remainer of randomly sorted data without labels
        test_labels=iris(randindex(105:150),5);%labels for accuracy testing
        %...................... end of processing data................%
        [pred_labels]=knnclassify(test_data,training_data,training_labels,n);
        test_labels=test_labels{:,:};%reformats table for proper indexing with matlab syntax
        accuracy(n,tests)=sum(test_labels==pred_labels)/length(test_labels);%calculates accuracy
    end
end
    averageacc1=mean(accuracy,2); %computer mean and standar deviation along each row
    stdacc1=std(accuracy,0,2);  %0 is default normalization mode of st() func.

    
for n=1:k;
    for tests=1:100;%max iterations per neighbor, 100
        %..........processing data.......................
        %dataset1- only petal_length and sepal_width
        %dataset->p2
        randindex=randperm(height(iris)); %using height rather than length due to nature of import of data
        training_data=iris(randindex(1:105),1:[3,2]); %columns: petal_length->3 sepal_width->2
        training_labels=iris(randindex(1:105),5);%column 5 is species 
        test_data=iris(randindex(105:150),1:[3,2]); %remainer of randomly sorted data without labels
        test_labels=iris(randindex(105:150),5);%labels for accuracy testing
        %...................... end of processing data................%
        [pred_labels]=knnclassify(test_data,training_data,training_labels,n);
        test_labels=test_labels{:,:};%reformats table for proper indexing with matlab syntax
        accuracy(n,tests)=sum(test_labels==pred_labels)/length(test_labels);%calculates accuracy
    end
end
 averageacc2=mean(accuracy,2); %computer mean and standar deviation along each row
 stdacc2=std(accuracy,0,2);  %0 is default normalization mode of st() func.

 fprintf('Accuracy for sepal_length and sepal_width %.4f \n', averageacc1)
 fprintf('Standard deviation for sepal_length and sepal_width %.4f \n', stdacc1)
 fprintf('Accuracy for petal_length and sepal_width %.4f \n', averageacc2)
 fprintf('Standard deviation for sepal_length and sepal_width %.4f \n',stdacc2)
 
