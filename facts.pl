% Define initial facts
male(john).
male(mike).
female(lisa).
female(sarah).

% Define initial rules
parent(X) :-
    father(X).
parent(X) :-
    mother(X).

father(john).
father(mike).

mother(lisa).
mother(sarah).

has_child(john).
has_child(lisa).

% Define rules for inferring parent based on gender and having a child
father(X) :-
    male(X),
    has_child(X).

mother(X) :-
    female(X),
    has_child(X).

% Define a rule for checking if someone is a parent
is_parent(X) :-
    parent(X),
    write(X), write(' is a parent.').

% Define a rule for checking if someone is not a parent
not_parent(X) :-
    \+ parent(X),
    write(X), write(' is not a parent.').

% Query to find out who is a parent
?- is_parent(X).
