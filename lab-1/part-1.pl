bigger(X, Y) :-
    X > Y.

start :-
    repeat,
    writeln('Enter clause'),
    read(X),
    %term_to_atom(Term, bigger),
    %writeln(term(Term)),
    X = 'end' -> fail.
