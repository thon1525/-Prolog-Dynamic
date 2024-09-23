:- use_module(library(clpfd)).  % Load the CLP(FD) library for finite domain constraints
% Define the constraint-based problem
solve(X, Y) :-
    X #> Y,         % X is greater than Y
    X #< 10,        % X is less than 10
    X + Y #= 10,    % X and Y sum to 10
    X in 1..9,      % X is between 1 and 9
    Y in 1..9,      % Y is between 1 and 9
    label([X, Y]).  % Labeling: find the actual values for X and Y that satisfy the constraints

% Query:
% ?- solve(X, Y).
% Output: X = 6, Y = 4.
