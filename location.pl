% Facts related to location (city, state)
location(chicago, illinois).
location(boston, massachusetts).
location(seattle, washington).
location(miami, florida).

% Facts related to stays (person, city)
stays(john, chicago).
stays(amy, boston).
stays(mike, seattle).
stays(sarah, miami).

% Predicate to display list of persons with their corresponding state and city
display_persons :-
    stays(Person, City),
    location(City, State),
    format('~w stays in ~w, ~w~n', [Person, City, State]),
    fail. % To force backtracking for all solutions
display_persons.

% Predicate to find the state in which a given person is staying
find_state(Person, State) :-
    stays(Person, City),
    location(City, State).

% Example queries:
% To display list of persons, state, and city:
% ?- display_persons.

% To find the state in which a given person is staying:
% ?- find_state(john, State).
