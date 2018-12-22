function [weight] = linearS(X, Y)
    squareMatrixInverse = inv(X'*X);
    weight = (squareMatrixInverse * X') * Y;
end
