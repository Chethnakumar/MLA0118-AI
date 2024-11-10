male(john).
male(paul).
male(mike).
male(jake).
female(mary).
female(susan).
female(lisa).
female(anna).

parent(john, paul).
parent(mary, paul).
parent(john, lisa).
parent(mary, lisa).
parent(paul, jake).
parent(susan, jake).
parent(paul, anna).
parent(susan, anna).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

ancestor(X, Y) :-
    parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).