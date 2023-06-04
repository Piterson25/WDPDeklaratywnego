animate(fred).
animate(alice).
male(fred).
canine(alice).
feline(fred).

checkprops(_, []).
checkprops(Person, [Prop | Tail]) :-
    call(Prop, Person),
    checkprops(Person, Tail).

?- checkprops(fred, [animate, male]).
?- checkprops(alice, [animate, feline]).
