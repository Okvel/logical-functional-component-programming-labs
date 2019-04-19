% assert(lower('obj1','obj2').
:- dynamic bigger/2.

bigger('car', 'motorcycle').
bigger('motorcycle','scooter').
bigger('plane','car').

addL(A,B) :-
    assert(bigger(B,A)).
addB(A,B) :-
    assert(bigger(A,B)).
theMostLower :-
    bigger(_,X),
    not(bigger(X,_)),
    format('~w is the most lower object', X).

theMostBigger :-
    bigger(B,_),
    not(bigger(_,B)),
    format('~w is the most bigger object.', B).

start :-
    theMostLower,
    nl,
    theMostBigger.
