last(X, [X]).
last(X, [_|T]) :- last(X,T).

delete(X, [X|T], [T]).
delete(X, [H|T], [H|T2]) :- delete(X, T, T2).

reverse([],[]).
reverse([H|T], L) :- 
    reverse(T, L2),
    append(L2, [H], L).

evenlength([]).
evenlength([_,_|T]) :- evenlength(T).

oddlength([_]).
oddlength([_,_|T]) :- oddlength(T).

shift([], []).
shift([H|T], L2) :- append(T, [H], L2). 

quadrat([], []).
quadrat([H|T], [Sq|SqT]) :- 
    Sq is H * H,
    quadrat(T,SqT).

combine([],[],[]).
combine([H1|T1], [H2|T2], [[H1,H2]|T3]) :- combine(T1, T2, T3).

palindrom(L) :- reverse(L, L).

p(X, L, Y, Z) :- append(_, [Y,X,Z|_], L).

q(_,[],[]).
q(X, [X,X|_], [X,X]).
q(X, [H|T], [H|T2]) :- q(X, T, T2).
