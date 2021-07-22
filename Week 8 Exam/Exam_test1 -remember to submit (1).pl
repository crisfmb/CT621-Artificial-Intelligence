male(john).
male(bob).
male(fred).
male(darren).
female(elizabeth).
female(susan).
female(jane).
female(anne).

parent(john, anne).
parent(elizabeth, anne).
parent(john, darren).
parent(elizabeth, darren).
parent(bob, fred).
parent(anne, fred).
parent(darren, jane).
parent(susan, jane).

married(elizabeth, john).
married(bob, anne).
married(susan, darren).
married(john, elizabeth).
married(anne, anne).
married(darren, susan).


father(john, darren).
father(john, anne).
father(darren, jane).
father(bob, fred).

mother(elizabeth, darren).
mother(elizabeth, anne).
mother(susan, jane).
mother(anne, fred).

father(X,Y):- male(X),
	parent(X,Y).

mother(X,Y):- female(X),
	parent(X,Y).

grandfather(X,Y):- father(X,Z),
	 parent(Z,Y).

is_married(X,Y):- father(X,Z), mother(Y,Z).

is_married(X,Y):- mother(X,Z), father(Y,Z).
