initial_state(state(at_floor, at_floor, on_floor, no)).

goal_state(state(_, _, _, yes)).

move(state(at_floor, Box, on_floor, no), walk_to_bananas, state(under_bananas, Box, on_floor, no)).

move(state(Monkey, at_floor, on_floor, no), push_box, state(under_bananas, under_bananas, on_floor, no)) :-
    Monkey = at_floor.

move(state(Position, Position, on_floor, no), climb_box, state(Position, Position, on_box, no)).

move(state(under_bananas, under_bananas, on_box, no), grab_banana, state(under_bananas, under_bananas, on_box, yes)).

solve(State, []) :-
    goal_state(State).

solve(State, [Action | RestOfActions]) :-
    move(State, Action, NewState),
    solve(NewState, RestOfActions).