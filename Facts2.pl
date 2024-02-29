% Every boy or girl is a child
is_child(X) :-
    boy(X).
is_child(X) :-
    girl(X).

% Every child gets a doll or a train or a lump of coal
gets(X, doll) :-
    is_child(X).
gets(X, train) :-
    is_child(X).
gets(X, lump_of_coal) :-
    is_child(X).

% No boy gets any doll
gets(X, doll) :-
    is_child(X),
    \+ boy(X).

% No child who is good gets any lump of coal
good_child(X) :-
    is_child(X),
    good(X).
\+ gets(X, lump_of_coal) :-
    good_child(X).

% Jack is a boy
boy(jack).
