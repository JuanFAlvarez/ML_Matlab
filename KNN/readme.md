Algorithm Design Process:

First, we need initialize an empty array called ‘kin_dis’ that will log both our query’s distance to a training example and the position of the training example. Then we start the calculation of the distances between each query example in our test_data and the current example from our training_data and start logging it into ‘kin_dis’.
Once the distance calculations are completed for each query example, we then sort the ‘kin_dis’ in ascending order of distances which would result in having the shortest distances at the top. Next, we pick the K top distances on this sorted array and get the labels by using the left column, which contains the position of the training examples that were selected, as an index to choose from ‘training_labels’.
Finally, we get the mode of the list of labels extracted and choose that to be assigned as our predicted label for that test sample and add the predicted label into ‘pred_labels’. We repeat this process for each test sample by implementing it in the form of a for loop.



Measuring Performance

To measure performance, we must use several ranges of k and compute accuracy using test labels and predicted labels. This accuracy computation for every k will have 100 iterations in which the data will be randomly split into test and training samples with a ratio of 70:30. Afterward the accuracies will be stored in a matrix, the average accuracy will be calculated, and the standard derivation of the computation will also be obtained due to the uncertainty of using a randomized process. This will be plotted in order to observe the effect of standard deviation in the average accuracy.
