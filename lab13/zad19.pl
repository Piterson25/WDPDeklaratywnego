pos(X) :- X > 0.
neg(X) :- X < 0.

filter(_, [], []).
filter(Pred, [H | T], [H | L]) :-
    call(Pred, H),
    filter(Pred, T, L).
filter(Pred, [_ | T], L) :-
    filter(Pred, T, L).

% filter(pos,[1,2,0,5,-5,-6,8],L). => L = [1, 2, 5, 8]
% filter(neg,[1,2,0,5,-5,-6,8],L). => L = [-5, -6]
