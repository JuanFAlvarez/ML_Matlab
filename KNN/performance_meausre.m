%%test accuracy for for K nearest neighbors
%% Range of K in {1,2,3,4,5,6,7,8} neighbors
%% 100 iterations per neighbor
  
clear;
k-8; % max neighbors

for n=1:k;
  for tests = 1:100;
  % call pre-process script
  knnpreprocess;
  
  % K=n
  [pred_labels]=knnclassify(test_data,training_data,training_labels,n)
  
  %reformats table for proper indexing with matlab syntax
  test_labels=test_labels{:,:}
  
  %calculates accuracy
  accuracy(n,tests)=sum(test_labels==pred_labels)/length(test_labels)
  end
end

% compute mean and standard deviation along each row
averageacc=mean(accuracy,2);
stdacc=std(accuracy,0,2)  % 0 is default normalization mode of std() function

% plot average accuracy vs K and an error line
plot(1:k,averageacc(1:k))
errorbar(averageacc(1:k),stdacc(1:k))
