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

noHost(X) :-
    (dog(X); cat(X)),
    not(host('Ivan', X)),
    not(host('Mark', X)),
    not(host('Stepan', X)).

printResults([X|T]) :-
    nl,
    print(X),
    printResults(T).
printResults([_]).

findAllWithoutHost :-
    findall(X, noHost(X), L) -> printResults(L).

findAllCatNames :-
    findall(X, cat(X), L) -> printResults(L).

findAllDogNames :-
    findall(X, dog(X), L) -> printResults(L).

findAllOrangePets :-
    findall(X, orange(X), L) -> printResults(L).

start :-
    format('~nWho is do not have host?'),
    findAllWithoutHost,
    format('~nWhat is the cat''s names?'),
    findAllCatNames,
    format('~nWhat is the dog''s names?'),
    findAllDogNames,
    format('~nWho is the orange color?'),
    findAllOrangePets.





























