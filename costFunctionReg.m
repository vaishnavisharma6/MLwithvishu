function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
n = size(theta);
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

A = theta' * X' ;
C = A';
B = 1./(1+ exp(-1 *C ));
D = B - y;
E = log(B);
F = theta([2,3],:);
K = F' * F;
G = 1-y;
H = 1-B;
I = log(H);
J = ( (-1 * E' * y) -(1* I' * G))/m + lambda/(2*m) * K;
L = X(:,[2:n]);
M = X(:,1);
O = (B' * M)/m;
N = (L' * B)/m + (lambda/m) * theta([2:n],1);
grad = [O;N];


 

 









% =============================================================

end
