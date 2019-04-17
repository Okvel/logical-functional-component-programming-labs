% assert(lower('obj1','obj2').
:- dynamic bigger/2.
:- dynamic lower/2.

bigger('car', 'motorcycle').
bigger('motorcycle','scooter').
bigger('plane','car').

lower('car', 'jeep').
lower('jeep', 'van').
lower('van', 'bus').

theMostLower :-
    lower(X,_),
    not(lower(_,X)),
    format('~w is the most lower object', X).

theMostBigger :-
    bigger(B,_),
    not(bigger(_,B)),
    format('~w is the most bigger object.', B).

start :-
    theMostLower,
    nl,
    theMostBigger.
