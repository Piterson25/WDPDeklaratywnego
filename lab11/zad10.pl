nth(1,[X],X).
nth(N, [_|T], X) :-
    N > 1,
    N1 is N - 1,
    nth(N1, T, X).

ordered([]).
ordered([_]).
ordered([X,Y|T]) :-
    X =< Y,
    ordered([Y|T]).
