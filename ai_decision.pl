% Define simple tasks (predicates)
play_music :- write('Playing music...').
turn_on_lights :- write('Turning on the lights...').
set_alarm(Time) :- write('Alarm set for '), write(Time), write('!').

% Meta-programming: Call a task dynamically
execute_task(Task) :-
    call(Task).






% Example usage:
% ?- execute_task(play_music).
% Output: Playing music...
% 
% ?- execute_task(turn_on_lights).
% Output: Turning on the lights...
% 
% ?- execute_task(set_alarm(7)).
% Output: Alarm set for 7!
