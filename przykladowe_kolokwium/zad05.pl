append([],L,L).
append([X|L1],L2,[X|L3]) :- append(L1,L2,L3).

% append([1,2],[Z],[1,2,3]). => Z = 3
