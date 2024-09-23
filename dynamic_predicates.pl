% Declare the dynamic predicate favorite_food/2
:- dynamic(favorite_food/2).

% Some initial facts
favorite_food(john, pizza).
favorite_food(mary, salad).

% Adding a new fact dynamically
add_favorite_food(Person, Food) :-
    assertz(favorite_food(Person, Food)).

% Removing a fact dynamically
remove_favorite_food(Person, Food) :-
    retract(favorite_food(Person, Food)).

% Modifying a person's favorite food
modify_favorite_food(Person, OldFood, NewFood) :-
    retract(favorite_food(Person, OldFood)),
    assertz(favorite_food(Person, NewFood)).

% Display all favorite foods
list_favorite_foods :-
    forall(favorite_food(Person, Food),
           format('~w likes ~w~n', [Person, Food])).
