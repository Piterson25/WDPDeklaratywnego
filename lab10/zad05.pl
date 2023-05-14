plus(X, Y, Z) :-
    Z is X + Y.

times(X, Y, Z) :-
    Z is X * Y.

fib(0, 0).
fib(1, 1).
fib(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, X),
    fib(N2, Y),
    plus(X, Y, Result).

sum-up(0, 0).
sum-up(N, Result) :-
    N > 0,
    N1 is N - 1,
    sum-up(N1, Sum),
    plus(Sum, N, Result).