% Define symptoms
symptom(fever).
symptom(cough).
symptom(headache).
symptom(sore_throat).
symptom(runny_nose).
symptom(muscle_aches).

% Define conditions and their associated symptoms
condition(cold, [fever, cough, runny_nose, sore_throat]).
condition(flu, [fever, cough, headache, muscle_aches]).
condition(allergy, [runny_nose, sore_throat]).

% Define a rule for diagnosis
diagnose(Symptoms, Condition) :-
    condition(Condition, ConditionSymptoms),
    subset(ConditionSymptoms, Symptoms).

% Define a predicate to check if a list is a subset of another list
subset([], _).
subset([H|T], List) :-
    member(H, List),
    subset(T, List).

% Define an interactive interface for patients
patient_diagnosis :-
    write('Welcome to the diagnosis system. Please input your symptoms one by one.'), nl,
    get_symptoms([], Symptoms),
    diagnose(Symptoms, Condition),
    write('Based on your symptoms, you might have '), write(Condition), write('.'), nl.

get_symptoms(Accumulator, Symptoms) :-
    write('Enter symptom (or type "done" to finish): '),
    read(Symptom),
    (Symptom == done ->
        Symptoms = Accumulator;
        (symptom(Symptom) ->
            append(Accumulator, [Symptom], NewAccumulator),
            get_symptoms(NewAccumulator, Symptoms);
            write('Invalid symptom. Please try again.'), nl,
            get_symptoms(Accumulator, Symptoms)
        )
    ).

% Start the diagnosis system
start_diagnosis :-
    repeat,
    patient_diagnosis,
    write('Do you want to diagnose another patient? (yes/no): '),
    read(Response),
    (Response == no -> !; true).
