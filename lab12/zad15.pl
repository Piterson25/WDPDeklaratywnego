% a.
p(x) :- a(x).
p(x) :- b(x), c(x), !, d(x).
p(x) :- f(x).                       
a(1).     
b(1).     
c(1).
b(2).     
c(2).     
d(2).
f(3).

% p(x). => false

% b.
p(1). 
p(2) :- !.
p(3).

% p(x). => false
% p(x), p(y). => false
% p(x), !, p(y). => false
