student('Alice', '20-10-2005', 'Math').
student('Max', '15-05-2004', 'Science').

teacher('Bob', '12-05-1998', 'Math').
teacher('Layla', '28-06-1981', 'Science').

student_info(Name, DOB, Sub) :-
    student(Name, DOB, Sub).

teacher_info(Name, DOB, Sub) :-
    teacher(Name, DOB, Sub).
