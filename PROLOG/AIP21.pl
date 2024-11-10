tower_of_hanoi(0, _, _, _, []).
tower_of_hanoi(N, Source, Target, Auxiliary, Moves) :-
    N > 0,
    N1 is N - 1,
    tower_of_hanoi(N1, Source, Auxiliary, Target, Moves1),
    Move = move(Source, Target),
    tower_of_hanoi(N1, Auxiliary, Target, Source, Moves2),
    append(Moves1, [Move | Moves2], Moves).