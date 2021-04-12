


function [theta,all_cost,iters]= linear_regression_gd(x,y,learning_rate,max_iter,tol)

close all
%Performs linear gradient descent to learn theta
%  updates theta by  taking max_iter gradient steps with learning rate
%  alpha or until it reaches a specified tolerance tol
% Initializing needed values 

m = length(y); % number of training examples
all_cost = []; %initializing a matrix to fill with the value of J as it changes through iterations
iters=0;
theta=[0;0];
for iter = 1:max_iter 
    hpre=theta'.*x; 
    prediction=sum(hpre,2);
    temp0=theta(1)-learning_rate*(sum((prediction-y)))/(m); %theta0-alpha*partial with respect to theta0 of function J
    temp1=theta(2)-learning_rate*sum((prediction-y).*x(:,2))/m; %theta1-alpha*partial with respect to theta1 of function J
    theta(1)=temp0; 
    theta(2)=temp1;
    all_cost(iter,1)=sum((prediction-y).^2)/(2*m);
    iters=iters+1;
    if (iter>1)
        if (100*(abs(all_cost(iter)-all_cost(iter-1))/all_cost(iter-1))<=tol) %if difference of iteration is within tolerance, ```might need to use alt method
            break;
        end
    end
end
theta0=theta(1);
theta1=theta(2);
plot(1:iters,all_cost(1:iters));
xlabel('Iterations')
ylabel('Cost')
h=theta0+theta1*x(:,2);
figure,
plot(x(:,2),h)
xlabel('sepal length')
ylabel('petal width')
hold on
%scatterplot data we are working with
plot(x(:,2),y,'rx');

