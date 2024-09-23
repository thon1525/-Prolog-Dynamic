% Facts (atoms and compound terms)
likes(john, pizza).
likes(mary, salad).

% List data structure
food_list([pizza, salad, burger]).

% Rule (with a condition)
likes(Who, Food) :-
    healthy(Food),
    person(Who).

% Compound terms
healthy(salad).
person(john).
person(mary).

% Query example
% ?- likes(john, pizza).
% Output: true.

% ?- food_list(List).
% Output: List = [pizza, salad, burger].
