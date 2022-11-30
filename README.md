### Problem 1:

Given a weighted undirected graph G = (V, E). The weight on an edge (v1, v2) represents the distance
between the vertices v1 and v2 {vi ∈V; and (vi, vj)∈ E}. Given a set of weights of edges in the form of
prolog clauses:

```
weight(p, q, 20).
weight(q, r, 5).
```

Write a prolog program to check if there exists a path between two given vertices. Print the path and its length, if it exists. For example:
```
?- findPath(p, r, Path, L).
```

the prolog interpreter should print

```
Path = [p, q, r]
L = 25
```

Note that the user should print an alternative path if it exists on each press of a semi colon and print no if no path exists.
Your program should avoid traversing through cycles, if any.

#### Instructions to run the program:

```
swipl findAPath.pl
```

#### Test cases for findAPath

1. 
```
weight(p, q, 20).
weight(q, r, 5).
```
```
?- findPath(p, r, Path, L).
```
2.
```
weight(a, b, 3).
weight(b, c, 4).
weight(a, c, 6).
weight(c, d, 5).
weight(a, e, 2).
```
```
?- findPath(a,d,Path,L).
?- findPath(a,c,Path,L).
```
3. 
```
weights(a,b,5).
weights(b,g,1).
weights(g,f,9).
weights(f,b,14).
weights(e,f,11).
weights(e,a,18).
weights(e,d,16).
weights(d,c,12).
weights(d,a,4).
weights(c,a,8).
```
```
?- findPath(a,d,Path,L).
```

### Problem 2:

Write a Prolog predicate for each of the following operations on a list:

1. ```sublist(X,Y):``` true if list X is a sublist of list Y. A sublist is the original list, in the same order, but with no/some elements removed.

2. ```has_triplicate(X):``` true if list X contains at least three copies of an element. It also prints the element which is triplicated.

3. ```remove_nth(N,X,Y):``` prints list Y which is the list X with its Nth element removed. If X does not have an N th element then the predicate should fail. Assume that N > 0 .

4. ```remove_every_other(X,Y):``` prints a list Y which is the list X with every other element removed (the two lists should have the same first element).

Note: Each predicate should be able to print the alternative solutions if they exist.

#### Assumptions: 

No assumptions taken.


#### Instructions to run the program:

```
swipl sublist.pl has_triplicate.pl remove_nth.pl remove_every_other.pl 
```

#### Test Cases

1. ```sublist:``` 

**Sample Input:** 
```
<!--  -->
?- sublist([l,i,c,s],[f,2,1,l,i,4,c,s]).
?- sublist([2,8,12],[2,5,6,8,8,11,9,1]).
?- sublist([2,8,12],[2,5,6,8,8,11,9,1]).
```
**Sample Output:** 
```
?- True
?- False
?- False
```

2. ```has_triplicate:```

**Sample Input:** 
```
?- has_triplicate([b,f,g,e,f,s,x,e,e,f,q]).
?- has_triplicate([]).
?- has_triplicate([a,b,b,a]).
```
**Sample Output:** 
```
?- f
?- True
?- e
?- True

?- false

?- false
```

3. ```remove_nth:```

**Sample Input:** 
```
?- remove_nth(7,[e,g,y,r,e,w,q,d,f,g,y],X).
?- remove_nth(2,[1,2,3,4,5,6,7,8,9,10],X).
?- remove_nth(1,[4, 8, 2, 34, 7, 1],X).
```
**Sample Output:** 
```
?- X = [e, g, y, r, e, w, d, f, g] 
?- X = [1, 3, 4, 5, 6, 7, 8, 9, 10]
?- X = [8, 2, 34, 7, 1].
```

4. ```remove_every_other:```

**Sample Input:** 
```
?- remove_every_other([x,y,z,a,n,m,s], Y).
?- remove_every_other([x,y,z,a,n,m,s], Y).
?- remove_every_other([1], Y).
?- remove_every_other([1,e,1,e], Y).
```
**Sample Output:** 
```
?- Y = [x, z, n, s].
?- Y = [x, z, n, s].
?- Y = [1].
?- Y = [1, 1].
```

### Team Members
1. **Anishka Singh** - 2020B3A70816P
2. **Kartik Dang** - 2020B3A70880P
3. **Agniva Banerjee** - 2020B3A70922P
4. **Gautam Jajoo** - 2020B3A71638P
