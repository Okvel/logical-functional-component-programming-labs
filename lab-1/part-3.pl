girl('Lena').
girl('Masha').
girl('Ira').

sister('Lena', 'Vanya').
do_not_like_skiing('Masha').

pair('Sergey', X) :- sister(X, 'Vanya').
pair('Vanya', X) :-
    not(do_not_like_skiing(X)),
    not(sister(X, 'Vanya')).

pair('Denis', X) :-
    not(pair('Sergey', X)),
    not(pair('Vanya', X)).

mainquestion :-
    girl(X),
    pair('Denis', X),
    format('Denis spend his time with ~w', X).