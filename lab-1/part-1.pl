% assert(lower('obj1','obj2').
:- dynamic bigger/2.
:- dynamic lower/2.

bigger('car', 'motorcycle').
lower('car', 'jeep').
lower('jeep', 'van').


findLower([X],X).
findLower([X|T],X) :-
    findLower(T,Y),
    lower(Y,X).
findLower([_|T],Y) :-
    findLower(T,Y).
theMostLower :-
    findall(X, (lower(X,Y);bigger(Y,X)), L) -> findLower(L,M),
    format('~w is the most lower object.', M).

findBigger([X],X).
findBigger([X|T],X) :-
    findBigger(T,Y),
    bigger(Y,X).
findBigger([_|T],Y) :-
    findBigger(T,Y).
theMostBigger :-
    findall(X, (bigger(X,Y);lower(Y,X)), L) -> findBigger(L,M),
    format('~w is the most bigger object.', M).
