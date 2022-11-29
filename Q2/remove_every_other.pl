remove_every_other(X,Z):- removeEveryOther(X,Z,1).
removeEveryOther([],[],_).
removeEveryOther([_|T],Y,Count):- Count =:= 0, Counter is 1-Count, removeEveryOther(T,Y,Counter).
removeEveryOther([H|T1],[H|T2],Count):- Count =:= 1 , Counter is Count -1, removeEveryOther(T1,T2,Counter).