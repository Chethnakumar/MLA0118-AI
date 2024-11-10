% Facts and rules
fact(a).
fact(b).
rule(c) :- fact(a), fact(b).

% Backward chaining inference
prove(X) :- fact(X).
prove(X) :- rule(X), prove_all(X).

prove_all(X) :- rule(X) :- prove_all(X).
prove
