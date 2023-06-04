% a.
append1([],L,L).
append1([H|L1],L2,[H|L3]) :- append1(L1,L2,L3).

append2([H|L1],L2,[H|L3]) :- append2(L1,L2,L3).
append2([],L,L). 
% append1(X,[3,4],[2,3,4]). => X = [2]
% append2(X,[3,4],[2,3,4]). => X = [2]

% b.
is_list([]).
is_list([X|L]) :- is_list(L).
% is_list(L). => L =[]
