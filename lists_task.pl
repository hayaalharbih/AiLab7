deleteElement(_, [], []).

deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

deleteElement(X, [Y|Tail], [Y|ResultTail]) :-
    X \= Y,
    deleteElement(X, Tail, ResultTail).

add_at_the_end(X, [], [X]).

add_at_the_end(X, [Head|Tail], [Head|ResultTail]) :-
    add_at_the_end(X, Tail, ResultTail).
