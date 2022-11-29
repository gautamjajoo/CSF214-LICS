sublist([],_).
sublist([H|T],[H|T1]):- subset(T,T1).
sublist([H|T2],[_|T1]):- subset([H|T2],T1).
