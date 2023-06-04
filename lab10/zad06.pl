sil(X,N) :- sil(X,N,1).
sil(0,A,A).
sil(X,N,A) :- 
    X > 0, 
    A1 is A * X, 
    X1 is X - 1, 
    sil(X1,N,A1).

plus(A, B, X) :- plus(A, B, X, 0).
plus(0, 0, A, A).
plus(A, B, X, Acc) :-
    Acc1 is A + B + Acc,
    plus(0, 0, X, Acc1).

times(A, B, X) :- times(A, B, X, 0).
times(_, 0, Acc, Acc).
times(A, B, X, Acc) :-
    B > 0,
    Bx is B - 1,
    Acc1 is Acc + A,
    times(A, Bx, X, Acc1).

fib(N, X) :- fib(N, X, 0, 1).
fib(0, Acc1, Acc1, _).
fib(1, Acc2, _, Acc2).
fib(X, N, Acc1, Acc2) :- 
    X > 1,
    X1 is X - 1,
    Acc3 is Acc1 + Acc2,
    fib(X1, N, Acc2, Acc3).

sum-up(N, X) :- sum-up(N, X, 0).
sum-up(0, Acc, Acc).
sum-up(N, X, Acc) :-
    N > 0,
    Nx is N - 1,
    Acc1 is Acc + N,
    sum-up(Nx, X, Acc1).
