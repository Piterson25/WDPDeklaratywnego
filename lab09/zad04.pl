value(i, 1).
value(v, 5).
value(x, 10).
value(l, 50).
value(c, 100).
value(d, 500).
value(m, 1000).

latin([], 0).
latin([H1, H2 | L], N) :-
  value(H1, V1),
  value(H2, V2),
  V1 < V2,
  latin(L, M),
  N is M + V2 - V1.
latin([H | L], N) :-
  value(H, V),
  latin(L, M),
  N is M + V.
