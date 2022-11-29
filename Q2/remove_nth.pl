store([],[]).
store([H|T1],[H|T2]):- store(T1,T2).

remove_nth(1,[_|T],Y):- store(T,Y).

remove_nth(Number, [H|T1], [H|T2]) :- N is Number-1, remove_nth(N, T1, T2).