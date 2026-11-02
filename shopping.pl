:- dynamic basket/1.

basket([coffee, milk, chocolate, apple, juice]).

start :-
    menu.

menu :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE 1: '),
    read(Choice),
    process(Choice).

process(d) :-
    basket(List),
    nl,
    display_items(List),
    menu.

process(a) :-
    write('enter the item you want to add it : '),
    read(Item),
    basket(List),
    retract(basket(List)),
    assertz(basket([Item|List])),
    write('The item has been added'), nl,
    menu.

process(e) :-
    write('Goodbye!'), nl.

process(_) :-
    write('Invalid choice, try again.'), nl,
    menu.

display_items([]) :- !.
display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
