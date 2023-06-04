% a.
size(nil, 0).
size(node(_, L, R), N) :-
    size(L, NL),
    size(R, NR),
    N is NL + NR + 1.

% b.
search(node(X, _, _), X).
search(node(_, L, R), X) :-
    search(L, X);
    search(R, X).

% c.
max(nil, 0).
max(node(X, nil, nil), X).
max(node(Root, L, R), Max) :-
    max(L, LMax),
    max(R, RMax),
    Max is max(Root, max(LMax, RMax)).

% d.
times(_, nil, nil).
times(N, node(X, L, R), node(Y, LT, RT)) :-
    Y is X * N,
    times(N, L, LT),
    times(N, R, RT).

% e.
preorder(nil, []).
preorder(node(X, L, R), [X|Rest]) :-
    preorder(L, LPre),
    preorder(R, RPre),
    append(LPre, RPre, Rest).
