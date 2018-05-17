// Agent anyag in project Etterem.mas2j

/* Initial beliefs and rules */

//Ismeri a recepteket: melyik etelhez milyen hozzavalok kellenek
hozzavalo(0, [1, 5, 7]).
hozzavalo(1, [0, 2, 3, 9]).
hozzavalo(2, [4, 5, 8]).
hozzavalo(3, [0, 7, 8, 10]).
hozzavalo(4, [0, 1, 2, 9]).
hozzavalo(5, [3, 4, 7]).
hozzavalo(6, [2, 5, 6, 11]).
hozzavalo(7, [0, 10, 12]).
hozzavalo(8, [9, 10]).
hozzavalo(9, [1, 2, 8, 11, 12]).

/* Initial goals */

!start.

/* Plans */

+rendeles(I,N) : true <- .print("Megkeresem a hozzavalokat a(z) ",N,". etelhez"); ?hozzavalo(N, V); !anyagok(V, 0); .send(etel, tell, kesz(I,N)).
+!anyagok(V, N) : .min([N,.length(V)-1],N) <- .nth(N,V,X); .print("Kornyezetbe ",X,". hozzavalo"); putanyag(X); !anyagok(V, N+1).
+!anyagok(_, _).
