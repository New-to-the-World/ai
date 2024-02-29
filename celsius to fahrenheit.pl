% Predicate to convert centigrade temperature to Fahrenheit
centigrade_to_fahrenheit(Centigrade, Fahrenheit) :-
    Fahrenheit is (Centigrade * 9/5) + 32.

% Predicate to check if a temperature is below freezing (0°C or 32°F)
below_freezing(Temperature) :-
    (Temperature =< 0 ; centigrade_to_fahrenheit(Temperature, Fahrenheit), Fahrenheit =< 32).
