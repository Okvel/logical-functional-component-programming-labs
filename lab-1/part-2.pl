% Сергей Левко, 757041, вариант 10

student('Vasya', 1).
student('Petya', 1).
student('Ivan', 2).
student('Igor', 2).
student('Masha', 3).
course :-
    student(X, Y),
    format('Student ~w is studying on the ~w grade', [X, Y]).

groupmate('Vasya', 'Petya').
groupmate('Petya', 'Vasya').
groupmate('Ivan', 'Igor').
groupmate('Igor', 'Ivan').
groupmates :-
    groupmate(X, Y),
    format('~w is ~w''s groupmate', [X, Y]).

mathexam :-
    groupmate('Igor', X),
    format('~w passed mathematics exam', X).




























