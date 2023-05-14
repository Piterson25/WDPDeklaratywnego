plus(X, Y, Z) :-
    Z is X + Y.

times(X, Y, Z) :-
    Z is X * Y.

fib(N, Result) :-
    fib(N, Result, 0, 1).
fib(0, A, A, _).
fib(N, Result, A, B) :-
    N > 0,
    N1 is N - 1,
    Sum is A + B,
    fib(N1, Result, B, Sum).

sum-up(N, Result) :-
    sum-up(N, Result, 0).
sum-up(0, A, A).
sum-up(N, Result, A) :-
    N > 0,
    N1 is N - 1,
    A1 is A + N,
    sum-up(N1, Result, A1).
