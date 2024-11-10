% Define fact as dynamic so new facts can be added
:- dynamic fact/1.

% Facts and rules
fact(a).
fact(b).
rule(c) :- fact(a), fact(b).

% Forward chaining inference with debugging
infer :-
    rule(X),
    \+ fact(X),
    assertz(fact(X)),
    write('Inferred: '), write(X), nl,
    fail.  % Continue to check for other inferences
infer.

% Query to display all facts
?- infer, fact(X).
