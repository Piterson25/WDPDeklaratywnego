mylength(0,[]).
mylength(N,[_|L]) :- mylength(M,L), N is M+1.

member(X,[X|_]).
member(X,[_|TAIL]) :- member(X,TAIL).

fac(0, 1).
fac(A, B) :- A > 0, A1 is A - 1, fac(A1, B1), B is B1 * A.

fib(0, 0).
fib(1, 1).
fib(N, Result) :- 
    N > 0, 
    N2 is N - 2, 
    N1 is N - 1, 
    fib(N2, X2), 
    fib(N1, X1), 
    Result is X1 + X2.

gdc(1, A, A).
gdc(A, A, 1).
gdc(A, B, Result) :-
    A > 1,
    B > 1,
    A > B,
    A1 is A - B,
    gdc(A1, B, Result).
gdc(A, B, Result) :-
    A > 1,
    B > 1,
    A < B,
    B1 is B - A,
    gdc(A, B1, Result).
