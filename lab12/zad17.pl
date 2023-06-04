maximum(X,Y,X) :- X >= Y, !.
maximum(X,Y,Y).
% maximum(5,2,2). => true
