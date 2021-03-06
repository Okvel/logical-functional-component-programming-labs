% Сергей Левко, 757041, вариант 9

passenger('Johns').
passenger('Smith').
passenger('Robinson').

home('Johns', 'Chicago').
home(X, 'Detroit') :-
    not(home(X, 'Chicago')),
    not(home(X, 'Oakland')).
home(X, 'Oakland') :-
    not(home(X, 'Chicago')),
    not(hasChildrens(X, 2)).

hasChildrens(X, 0) :-
    not(home(X, 'Chicago')),
    not(hasChildrens(X, 2)).
hasChildrens(X, 1) :-
    not(hasChildrens(X, 0)),
    not(hasChildrens(X, 2)).
hasChildrens('Smith', 2).

question :-
    passenger(X),
    home(X, Y),
    hasChildrens(X, Z),
    format('~w from ~w city and has ~w childrens', [X,Y,Z]).
