% Facts about family relationships
father(bob, tom).
father(bob, sue).
father(tom, emily).
father(john, marry).

mother(ann, tom).
mother(ann, sue).
mother(mary, emily).
mother(sue, marry).

% Rules to define other relationships
sister(X, Y) :-
    female(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

grandchild(X, Y) :-
    parent(Y, Z),
    parent(Z, X).

grandfather(X, Y) :-
    father(X, Z),
    parent(Z, Y).

uncle(X, Y) :-
    brother(X, Z),
    parent(Z, Y).

% Predicates to determine gender
female(ann).
female(mary).
female(sue).
female(emily).
female(marry).

male(bob).
male(tom).
male(john).

% Query examples
% a. Father(X, bob)
% b. Grandson(X,Y)
% c. Uncle (bill, Sue)
% d. Mother (marry, X)

