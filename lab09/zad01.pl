mylength(0,[]).
mylength(N,[_|L]) :- mylength(M,L), N is M+1.

member(X,[X|_]).
member(X,[_|TAIL]) :- member(X,TAIL).

fac(0, 1).
fac(A, B) :- 
    A > 0, 
    A1 is A - 1, 
    fac(A1, B1), 
    B is B1 * A.

fib(0, 0).
fib(1, 1).
fib(N, Result) :- 
    N > 0, 
    N2 is N - 2, 
    N1 is N - 1, 
    fib(N2, X2), 
    fib(N1, X1), 
    Result is X1 + X2.

gcd(X, Y, G) :- Y is X, G is X.
gcd(X, Y, G) :- X > Y, Z is X - Y, gcd(Z, Y, G).
gcd(X, Y, G) :- X < Y, Z is Y - X, gcd(X, Z, G).
