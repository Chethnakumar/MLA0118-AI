person('Alice', '15-07-2005').
person('Max', '20-02-1999').
person('Carol', '25-06-2005').

get_dob(Name, DOB) :-
    person(Name, DOB).

get_name(DOB, Name) :-
    person(Name, DOB).