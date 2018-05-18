// Agent etel in project tunyacsap.mas2j

/* Initial beliefs and rules */
//A szakacs is ismeri a recepteket, megnezi, jokat kapott-e
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

/* Initial goals   */

!start.

/* Plans */
+anyagperc(N) <- .print("Megvan a(z) ",N,". anyag"); +hv(N).
+kesz(I,N) : true <- ?hozzavalo(N,X); !varakozas(X,0); .print("Elkeszitem az ",N,". etelt, es a kornyezetbe teszem"); 
	putetel(N); .send(pincer,tell,vendeg(I,N)).
+!varakozas(X,K) : .length(X,L) & L>K <- .nth(K,X,Y); .wait(hv(Y)); .print("Beleteszem a(z) ",Y,". hozzavalot"); 
	-hv(X[K]); !varakozas(X,K+1).
+!varakozas(_,_).

