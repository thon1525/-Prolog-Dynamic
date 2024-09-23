# Prolog Dynamic Predicates Example

This Prolog project demonstrates the use of dynamic predicates to add, modify, and remove facts at runtime. The project manages a simple knowledge base of people and their favorite foods, showing how Prolog's dynamic nature can be used to handle evolving data.

## Features

- **Dynamic predicate management**: Add, remove, or modify facts during program execution.
- **Declarative logic**: Easily express complex relationships and constraints.
- **Simple interface**: Define and query favorite foods of different people.

## Requirements

- **SWI-Prolog** (or any compatible Prolog interpreter)
  - You can download SWI-Prolog from [here](https://www.swi-prolog.org/Download.html).

## Project Structure

The project consists of the following dynamic operations:

- Add a new fact (`add_favorite_food/2`)
- Remove an existing fact (`remove_favorite_food/2`)
- Modify an existing fact (`modify_favorite_food/3`)
- List all facts (`list_favorite_foods/0`)

## Code

```prolog
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
```
