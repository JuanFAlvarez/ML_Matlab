function [pred_labels] = knnclassify(test_data,training_data,training_labels,K)
kin_dis=zeros(height(test_data),2); %generate empty array of index and distance of a neighbor
m=height(training_data);%training data samples
n=height(test_data);%test_data samples 

%for each test sample n, claculate euclidean distance 
for alltest=1:n;  
    %calculate euclidean distance as follows:
    %for each feature of example n, calculate distance of each feature 
    %to each training data point, m
    for allsamp=1:m
       kin_dis(allsamp,:)=[allsamp norm(test_data{alltest,:}-training_data{allsamp,:})];
    end
    %then add to kin_dis(index and distance)
    %then sort and pick top K and put in column vector
    %then pick mode
    %assign that label to the nth test example  
    kin_dis=sortrows(kin_dis,2);%sorts kin_dis in ascending order aka least on top 
    choices=kin_dis(1:K,:);%chooses Knn
    pick=choices(:,1)'; %picks only first column and transposes for indexing
    pred_labels(alltest,:)=mode(categorical(training_labels{pick,:}));%chooses the mode classification as string
end

pred_labels;
       
    %%example call
    %%[pred_labels]=knnclassify(test_data,training_data,training_labels,1)
