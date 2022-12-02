weight(a, b, 3).
weight(b, c, 4).
weight(a, c, 6).
weight(c, d, 5).
weight(a, e, 2).

isAMember(V1, [V1|_]).
isAMember(V1, [_|Length]) :- isAMember(V1, Length).

isAdjacent(V1, V2, Weight) :- weight(V1, V2, Weight); weight(V2, V1, Weight).

getPath(V1, V1, [V1], T, 0) :- notAMember(isAMember(V1, T)).
getPath(V1, V2, [V1|Path], T, Length) :- isAdjacent(V1, H, Weight), 
    notAMember(isAMember(V1, T)), 
    getPath(H, V2, Path, [V1|T], Inner), 
    Length is Inner + Weight.

% Wrapper Class
findPath(V1, V2, Path, Length) :- getPath(V1, V2, Path, [], Length).
notAMember(P) :- P, !, fail ; true.