% a.
last(X, [X]).
last(X, [_|T]) :- last(X,T).

% b.
delete(X, [X|T], [T]).
delete(X, [H|T1], [H|T2]) :- delete(X, T1, T2).

% c.
delete(L1, L2) :- append(L2, [_, _, _], L1).

% d.
reverse([],[]).
reverse([H|T], L2) :- 
    reverse(T, L),
    append(L, [H], L2).

% e.
evenlength([]).
evenlength([_,_|T]) :- evenlength(T).

oddlength([_]).
oddlength([_,_|T]) :- oddlength(T).

% f.
shift([], []).
shift([H|T], L2) :- append(T, [H], L2). 

% g.
quadrat([], []).
quadrat([H|T], [SqH|SqT]) :- 
    SqH is H * H,
    quadrat(T,SqT).

% h.
combine([],[],[]).
combine([H1|T1], [H2|T2], [[H1,H2]|T3]) :- combine(T1, T2, T3).

% i.
palindrom(L) :- reverse(L, L).

% j.
p(X, L, Y, Z) :- append(_, [Y,X,Z|_], L).

% k.
q(X, L1, L2) :-
    append(_, [X, X], L2),
    append(L2, _, L1).
