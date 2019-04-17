% Сергей Левко, 757041, вариант 9

cat('Mysya').
cat('Strelka').
cat('Myrka').

dog('Rex').
dog('Drygok').
dog('Myhtar').

white('Myhtar').
black('Strelka').
brown('Mysya').
orange('Myrka').
orange('Drygok').
spotty('Rex').

host('Ivan', X) :-
    black(X);
    brown(X).

host('Mark', X) :-
    dog(X),
    not(white(X)),
    not(host('Ivan', X)).

host('Stepan', 'Myrka') :-
    not(host('Mark', 'Mysya')),
    not(host('Ivan', 'Myhtar')),
    not(host('Mark', 'Myhtar')).

noHost :-
    (dog(X); cat(X)),
    not(host('Ivan', X)),
    not(host('Mark', X)),
    not(host('Stepan', X)),
    format('~w do not have host', X).

catNames :-
    cat(X),
    format('~w', X).

dogNames :-
    dog(X),
    format('~w', X).

orangePets :-
    orange(X),
    format('~w', X).



























