symbol(i, 1).
symbol(v, 5).
symbol(x, 10).
symbol(l, 50).
symbol(c, 100).
symbol(d, 500).
symbol(m, 1000).

latin([], 0).
latin([X], Result) :-
    symbol(X, Result).
latin([X,Y|Tail], Result) :-
    symbol(X, XValue),
    symbol(Y, YValue),
    XValue < YValue,
    latin([Y|Tail], Rest),
    Result is Rest - XValue.
latin([X,Y|Tail], Result) :-
    symbol(X, XValue),
    symbol(Y, YValue),
    XValue >= YValue,
    latin([Y|Tail], Rest),
    Result is XValue + Rest.