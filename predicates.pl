% Some facts about fruits and their colors
fruit(apple, red).
fruit(banana, yellow).
fruit(strawberry, red).
fruit(grape, purple).

% Higher-order predicate: filter list based on a rule
% filter(+Rule, +List, -FilteredList)
filter(_, [], []).   % Base case: Empty list results in an empty filtered list
filter(Rule, [H|T], [H|FilteredT]) :-
    call(Rule, H),   % If Rule applies to the head, include it in the filtered list
    filter(Rule, T, FilteredT).
filter(Rule, [_|T], FilteredT) :-
    filter(Rule, T, FilteredT).  % If Rule doesn't apply, skip head and continue

% A specific rule: Fruits that are red
is_red(Fruit) :-
    fruit(Fruit, red).

% Example query to filter red fruits:
% ?- filter(is_red, [apple, banana, strawberry, grape], RedFruits).
% Output: RedFruits = [apple, strawberry].
