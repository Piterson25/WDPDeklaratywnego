memberc(X,[X|_]) :- !.
memberc(X,[_|L]) :- memberc(X,L).
