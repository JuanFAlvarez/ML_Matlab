%pre-processing data from iris.data file given to us by the assignment paper and not using built-in matlab dataset
%only considering versicolor and virginica and only sepal length and petal
%width


iris=readtable('iris.data','filetype','text')%reads unspecified format as text

iris.Properties.VariableNames{1} = 'sepal_length'; %labels the columns
iris.Properties.VariableNames{2} = 'sepal_width';
iris.Properties.VariableNames{3} = 'petal_length';
iris.Properties.VariableNames{4} = 'petal_width';
iris.Properties.VariableNames{5} = 'species';

%only considering versicolor and virginica species
iris_testdata=iris(51:150,:) %columns 1-50 are all setosa species
x_test=iris.sepal_length %for now all of our features are used as test set
y_test=iris.petal_width; %same for the predictedm
%the context of 'test' used here is to get the algorithm going, not to test
%our values and see if it gives a proper value

%we will need to further split this data into a real test set and real
%training set


x_test=[ones(size(x_test)) x_test]; %make into matrix with 1s and xis for the hypothesis function h




%end of pre-processing


%/////h=thetas(1)+thetas(2)*x_test(:,2); %computes the cost function after gradientDescent() is run
%requires calling gradientDescent as follows:
%[thetas,jhistory]=gradientDescent(X,y,theta, alpha, num_iters)

plot(x_test(:,2),y_test,'rx')%plots features against each other in scatterplot
hold on
%plot(x_test(:,2),h) %plots the line made from the extracted theta values


