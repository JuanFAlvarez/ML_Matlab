**Algorithm Design Process:

First, we need initialize an empty array called ‘kin_dis’ that will log both our query’s distance to a training example and the position of the training example. Then we start the calculation of the distances between each query example in our test_data and the current example from our training_data and start logging it into ‘kin_dis’.
Once the distance calculations are completed for each query example, we then sort the ‘kin_dis’ in ascending order of distances which would result in having the shortest distances at the top. Next, we pick the K top distances on this sorted array and get the labels by using the left column, which contains the position of the training examples that were selected, as an index to choose from ‘training_labels’.
Finally, we get the mode of the list of labels extracted and choose that to be assigned as our predicted label for that test sample and add the predicted label into ‘pred_labels’. We repeat this process for each test sample by implementing it in the form of a for loop.



**Measuring Performance

To measure performance, we must use several ranges of k and compute accuracy using test labels and predicted labels. This accuracy computation for every k will have 100 iterations in which the data will be randomly split into test and training samples with a ratio of 70:30. Afterward the accuracies will be stored in a matrix, the average accuracy will be calculated, and the standard derivation of the computation will also be obtained due to the uncertainty of using a randomized process. This will be plotted in order to observe the effect of standard deviation in the average accuracy.


**Tests on a subset of features:

To perform the tests on the subset features we must use either subsets that had good separability and poor separability. We then use two tests with k=1 to determine classification success. It required a slight modification on preprocessing due to the use of another set of data.


**Observation:
It can be observed that the dataset with only petal length and sepal width obtained a higher accuracy compared to the dataset containing only the sepal length and sepal width. Based on this we can assume a good separability in the features will result in a better classification. We can also observe a smaller standard deviation on the petal/sepal dataset, which indicate a lesser uncertainty for the data.


**Conclusion
Based on our results and data, we realized that the use of K-Nearest Neighbors was successful in classifying the sample in the ‘iris.data’ with great accuracy. The predicted labels were able to match the test data and the performance test returned extremely positive data on the accuracy of a range of 1 to 8 for K over many iterations of testing for each. We were able to also learn about the algorithm’s abilities and limitations, such as when subsets of data are used. Finally, we also noticed that a good K value to use for this data was K=3 as it would provide very accurate results with a very small amount of computation times. After K=6, we noticed the maximum accuracy for prediction, but we must consider the computation time. K=3 provides a middle ground between computation time and satisfying results, so we conclude that K=3 seems to be the best value to choose for this application. Increasing K after 6 resulted in a decline of accuracy which shows that the higher the K doesn’t necessarily mean the better prediction.
