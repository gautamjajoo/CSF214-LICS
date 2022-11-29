Problem 2:

Write a Prolog predicate for each of the following operations on a list:

a) sublist(X,Y): true if list X is a sublist of list Y. A sublist is the original list, in the same
order, but with no/some elements removed.

b) has_triplicate(X): true if list X contains at least three copies of an element. It also prints
the element which is triplicated.

c) remove_nth(N,X,Y): prints list Y which is the list X with its N
th element removed. If X does not have an N th element then the predicate should fail. Assume that N > 0 .

d) remove_every_other(X,Y): prints a list Y which is the list X with every other element
removed (the two lists should have the same first element).

Note: Each predicate should be able to print the alternative solutions if they exist.

Assumptions: 

No assumptions taken.


Instructions to run the program:

```
swipl sublist.pl has_triplicate.pl remove_nth.pl remove_every_other.pl 

```

For test cases, run the following:

For sublist: 

```
    <!-- Sample Input -->
    ?- sublist([l,i,c,s],[f,2,1,l,i,4,c,s]).
    ?- sublist([2,8,12],[2,5,6,8,8,11,9,1]).
    ?- sublist([2,8,12],[2,5,6,8,8,11,9,1]).

    <!-- Sample Output -->

    ?- True
    ?- False
    ?- False
```

For has_triplicate:

```
    <!-- Sample Input -->
    ?- has_triplicate([b,f,g,e,f,s,x,e,e,f,q]).
    ?- has_triplicate([]).
    ?- has_triplicate([a,b,b,a]).

    <!-- Sample Output -->
    ?- f
    ?- True
    ?- e
    ?- True

    ?- false

    ?- false

```

For remove_nth:

```
    <!-- Sample Output -->
    ?- remove_nth(7,[e,g,y,r,e,w,q,d,f,g,y],X).
    ?- remove_nth(2,[1,2,3,4,5,6,7,8,9,10],X).
    ?- remove_nth(1,[4, 8, 2, 34, 7, 1],X).

    <!-- Sample Input -->
    ?- X = [e, g, y, r, e, w, d, f, g] 
    ?- X = [1, 3, 4, 5, 6, 7, 8, 9, 10]
    ?- X = [8, 2, 34, 7, 1].
```

For remove_every_other:

```
    <!-- Sample Input -->
    ?- remove_every_other([x,y,z,a,n,m,s], Y).
    ?- remove_every_other([x,y,z,a,n,m,s], Y).
    ?- remove_every_other([1], Y).
    ?- remove_every_other([1,e,1,e], Y).

    <!-- Sample Output -->
    ?- Y = [x, z, n, s].
    ?- Y = [x, z, n, s].
    ?- Y = [1].
    ?- Y = [1, 1].
```

