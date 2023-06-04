% a.
nth(1,[X|_],X).
nth(N, [_|T], X) :-
    N > 1,
    N1 is N - 1,
    nth(N1, T, X).

% b.
ordered([]).
ordered([_]).
ordered([X,H|Tail]) :-
    X =< H,
    ordered([H|Tail]).

% c.
mergesort([], []).
mergesort([X], [X]).
mergesort(List, Sorted) :-
    split(List, Left, Right),
    mergesort(Left, SortedLeft),
    mergesort(Right, SortedRight),
    merge(SortedLeft, SortedRight, Sorted).

split([], [], []).
split([X], [X], []).
split([X,Y|Tail], [X|Left], [Y|Right]) :- split(Tail, Left, Right).

merge([], L, L).
merge(L, [], L).
merge([X|Left], [Y|Right], [X|Result]) :-
    X =< Y,
    merge(Left, [Y|Right], Result).
merge([X|Left], [Y|Right], [Y|Result]) :-
    X > Y,
    merge([X|Left], Right, Result).
