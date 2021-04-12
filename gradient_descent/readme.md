Algorithm Design Process:
Before implementing Gradient Descent, we must compute the hypothesis function to initialize a prediction value and continue to do so for each iteration.
The hypothesis function to be implemented is 

![hypothesis function](figures/gradient1.PNG)

With manually initialized values of theta_0,theta_1 to zero:

![theta vector](figures/gradient2.PNG)

Next, we must compute the cost function

![cost function](figures/gradient3.PNG)

and for each iteration we will compute the partial derivatives 

![partials](figures/gradient4.PNG)

defined as

![partial equations](figures/gradient5.PNG)


The algorithm implemented is as follows:

![algorithm](figures/algo.PNG)
