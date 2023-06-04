permutation([], []).
permutation(L1, [X|Perm]) :-
    select(X, L1, Rest),
    permutation(Rest, Perm).
