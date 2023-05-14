parent(john, mary).
parent(john, sara).
parent(john, lisa).
parent(mary, anna).
parent(mary, emily).
parent(david, john).

female(mary).
female(sara).
female(lisa).
female(anna).
female(emily).

male(john).
male(david).

child(X, Y) :- parent(Y, X).

mother(X, Y) :- parent(X, Y), female(X).

sister(X, Y) :-
  parent(Z, X),
  parent(Z, Y),
  female(X),
  X \= Y.

has_a_child(X) :- parent(X, _).

grandparent(X, Z) :-
  parent(X, Y),
  parent(Y, Z).

predecessor(X, Z) :- parent(X, Z).
predecessor(X, Z) :- parent(X, Y), predecessor(Y, Z).
