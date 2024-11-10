% Facts: Diseases and their associated symptoms
disease(flu, [fever, cough, body_aches, fatigue]).
disease(cold, [cough, runny_nose, sore_throat, sneezing]).
disease(malaria, [fever, chills, sweating, headache]).
disease(pneumonia, [fever, cough, difficulty_breathing, chest_pain]).
disease(arthritis, [joint_pain, swelling, stiffness, fatigue]).
disease(diabetes, [frequent_urination, excessive_thirst, fatigue, blurred_vision]).

% Rule: If a disease has matching symptoms, it is a possible diagnosis
diagnose(Disease) :-
    disease(Disease, Symptoms),
    check_symptoms(Symptoms).

% Rule to ask if a symptom is present in the patient, with backtracking control
check_symptoms([]).
check_symptoms([Symptom | Rest]) :-
    format('Do you have ~w? (yes/no): ', [Symptom]),
    read(Response),
    Response == yes, !,   % If the user responds 'yes', continue to next symptom without backtracking
    check_symptoms(Rest).

% Main query to start the diagnosis process
start_diagnosis :-
    write('Welcome to the medical diagnosis system.'), nl,
    write('Please answer the following questions with "yes" or "no".'), nl,
    ( diagnose(Disease)
    -> format('Based on the symptoms, you might have: ~w', [Disease]), nl
    ;  write('No diagnosis could be determined based on the given symptoms.'), nl
    ).
