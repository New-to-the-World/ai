% Define facts about animals
animal(elephant).
animal(tiger).
animal(lion).
animal(parrot).
animal(penguin).
animal(sparrow).

% Define facts about mammals
mammal(elephant).
mammal(tiger).
mammal(lion).

% Define facts about birds
bird(parrot).
bird(penguin).
bird(sparrow).

% Define rules to determine if an animal is a mammal
is_mammal(X) :-
    mammal(X),
    animal(X),
    write(X), write(' is a mammal.').

% Define rules to determine if an animal is a bird
is_bird(X) :-
    bird(X),
    animal(X),
    write(X), write(' is a bird.').

% Define a rule to check if an animal is neither a mammal nor a bird
is_neither(X) :-
    animal(X),
    \+ mammal(X),
    \+ bird(X),
    write(X), write(' is neither a mammal nor a bird.').

% Query to find out whether an animal is a mammal or a bird
?- is_mammal(elephant).
?- is_bird(sparrow).
?- is_neither(tiger).
