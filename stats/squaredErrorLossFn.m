function L = squaredErrorLossFn(yhat, ytest)
L = (yhat - ytest).^2;
%L = (yhat(:) - ytest(:)).^2;
end