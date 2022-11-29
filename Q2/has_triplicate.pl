containsSingle(H,[H1|T]) :- containsSingle(H,T); H == H1.

containsDouble(H1,[H1|T]) :- containsSingle(H1,T).
containsDouble(H1,[_|T]) :- containsDouble(H1,T).

has_triplicate([H1|H]) :- containsDouble(H1,H),write(H1).
has_triplicate([_|H])  :- has_triplicate(H).